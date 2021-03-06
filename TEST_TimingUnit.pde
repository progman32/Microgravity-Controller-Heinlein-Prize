/* Amount of time to energize the experiment power coils. */
#define RELAY_ACTUATION_MSEC 50 //Datasheet specifies 30 msec.

const char TU_Menu_a[] PROGMEM = "Set Power SR state";
const char TU_Menu_b[] PROGMEM = "Experiment power on";
const char TU_Menu_c[] PROGMEM = "Experiment power off";
const menu_item_t tu_menu[] = {
  { '0', TU_Menu_a, &PowerSRStateEditor },
  { ']', TU_Menu_b, &ExpPowerOn },
  { '[', TU_Menu_c, &ExpPowerOff },
};

const char EnterTimingUnitMenu_hardwarewarn[] PROGMEM = "WARNING: HARDWARE TYPE SET TO LOGGER! Automatically changing to timer!";
boolean EnterTimingUnitMenu() {
  if( hardware == HARDWARE_LOGGER ) {
    printPSln(EnterTimingUnitMenu_hardwarewarn);
    delay(1000);
    hardware = HARDWARE_TIMER;
  }
  menu = tu_menu;
  menu_size = sizeof(tu_menu) / sizeof(menu_item_t);
  return true;
}

/**
 * Writes the contents of power_sr_lowbyte and power_sr_highbyte to the
 * power status shift register.
 */
void write_power_sr(byte power_sr_lowbyte, byte power_sr_highbyte) {
  digitalWrite(TC_OUT_POWER_SR_L, LOW);
  shiftOut(TC_OUT_POWER_SR_D, TC_OUT_POWER_SR_C, MSBFIRST, power_sr_highbyte);
  shiftOut(TC_OUT_POWER_SR_D, TC_OUT_POWER_SR_C, MSBFIRST, power_sr_lowbyte);
  digitalWrite(TC_OUT_POWER_SR_L, HIGH);
}

const char PowerSRStateEditor_instructions[] PROGMEM = "\t/: All on" "\r\n" "\tz: All off" "\r\n" "\r\n\t0...f to toggle, esc to quit.";
boolean PowerSRStateEditor() {
  init_hardware_pins();
  byte power_sr_lowbyte = 0; //all off
  byte power_sr_highbyte = 0; //all off
  while(true) {
    /* Shift out state. */
    write_power_sr(power_sr_lowbyte, power_sr_highbyte);
    
    /* Print current state: */
    for(int n = 0; n < 8; n++) {
      print('\t');
      print(n, HEX);
      print(':');
      print(' ');
      println((power_sr_lowbyte >> n) & 0x01);
    }
    for(int n = 0; n < 8; n++) {
      print('\t');
      print(n+8, HEX);
      print(':');
      print(' ');
      println((power_sr_highbyte >> n) & 0x01);
    }
    /* Print extra stuff. */
    printPSln(PowerSRStateEditor_instructions);
    
    /* Wait for a key. */
    char in = read_char();
    
    /* Escape? */
    if( in == 27 ) {
      return true;
    }
    
    int num = -1;
    /* Try to parse input. */
    /* Number key? */
    if(in >= 48 && in <= 57) {
      num = in - 48;
    } else if(in >= 97 && in <=102) { /* Hex key? */
      num = in - 87;
    }
    /* Did we get a number? */
    if(num != -1 ) {
      /* Do bit wizardry to flip the bit. */
      /* Create a mask with a one at the (tc_id % 8)'th position. */
      byte mask = (1 << (num % 8));
      if(num >= 8) {
        if( (power_sr_highbyte & mask) == 0) { // turn on
          power_sr_highbyte = power_sr_highbyte | mask;
        } else { // turn off
          power_sr_highbyte = power_sr_highbyte & ~mask;
        }
      } else {
        if( (power_sr_lowbyte & mask) == 0) { // turn on
          power_sr_lowbyte = power_sr_lowbyte | mask;
        } else { // turn off
          power_sr_lowbyte = power_sr_lowbyte & ~mask;
        }
      }
    } else {
      if(in == '/') {
        power_sr_lowbyte = 0xFF; //all on.
        power_sr_highbyte = 0xFF; //all on.
      } else if(in == 'z') {
        power_sr_lowbyte = 0x00; //all off.
        power_sr_highbyte = 0x00; //all off.
      }
    }
  }
}

/**
 * Set the state of the experiment power relay.
 * @param isOn True if the rest of the experiment should be turned on, false otherwise.
 */
void set_exp_power_on(boolean isOn) {
  digitalWrite(TC_OUT_EXP_TRIGGER_RELAY_ON, isOn);
  digitalWrite(TC_OUT_EXP_TRIGGER_RELAY_OFF, !isOn);
  delay(RELAY_ACTUATION_MSEC);
  digitalWrite(TC_OUT_EXP_TRIGGER_RELAY_ON, LOW);
  digitalWrite(TC_OUT_EXP_TRIGGER_RELAY_OFF, LOW);
}

boolean ExpPowerOn() {
  init_hardware_pins();
  set_exp_power_on(true);
  return true;
}
boolean ExpPowerOff() {
  init_hardware_pins();
  set_exp_power_on(false);
  return true;
}
