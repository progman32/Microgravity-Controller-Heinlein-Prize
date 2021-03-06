/**
 * @file
 * Goldelox class implementation.
 * @author Giacomo Ferrari progman32@gmail.com
 */
 
#include "Goldelox.h"


///////////HERE THERE BE DRAGONS. THIS FILE HAS MANY UGLY THINGS/////////////////////

//Major TODO: Find out why the heck NewSoftSerial likes to die here, and switch to it.
//After doing so, make issueCommand() respect minimum reply length parameter.

#include <NewSoftSerial.h>

Goldelox::Goldelox(NewSoftSerial* serial, byte rst) {
  mpGdlox = serial;
  mRstPin = rst;
}

GoldeloxStatus Goldelox::reinit() {
  //Hold response of device to version request.
  byte b1, b2, b3, b4, b5;

  //Reset the device
  //TODO: Find out which delays can be eliminated/shortened.
  pinMode(mRstPin, OUTPUT);
  digitalWrite(mRstPin, HIGH);
  delay(100);
  digitalWrite(mRstPin, LOW);
  //Wait for settle.
  delay(500);
  digitalWrite(mRstPin, HIGH);
  delay(1000);
  
  //Auto-baud the device.
  if(!issueCommand("U", 1, 1)) return TIMED_OUT; //Timed out!
  
  //Read (garbage) until the device sends an ACK.
  //timeout gracefully instead of infini-looping if device sends garbage only (or pin is left floating).
  unsigned long time = millis();
  while((b1 = mpGdlox->read()) != GDLOX_ACK) {
    if(millis() - time >= GDLOX_CMD_DELAY) return TIMED_OUT;
  }
  
  if(b1 == GDLOX_ACK){
    //Found device! Ask for info.
    if(!issueCommand("V", 1, 5)) return TIMED_OUT; //Timed out!
    b1 = mpGdlox->read(); //Device type (should be GDLOX_DEVICE_TYPE)
    b2 = mpGdlox->read(); //Silicon rev
    b3 = mpGdlox->read(); //pmmc rev
    b4 = mpGdlox->read(); //Reserved (==0)
    b5 = mpGdlox->read(); //Reserved (==0)
    if( b1 == GDLOX_DEVICE_TYPE && b4 == 0 && b5 == 0) return OK;
    else return ERROR;
  } else { return ERROR; }
}

GoldeloxStatus Goldelox::initializeNewCard() {
  if(!issueCommand("@i", 2, 1)) return TIMED_OUT; //Timed out!
  //Check for ACK.
  byte in = mpGdlox->read();
  if(in == GDLOX_ACK) return OK;
  else if(in == GDLOX_NAK) return NO_CARD;
  else return ERROR;
}

boolean Goldelox::issueCommand(const char* cmd, byte len, byte minReplyLength) {
  for(int x=0;x<len;x++)
    mpGdlox->print((byte)cmd[x]);
  unsigned long timer = millis();
  while(millis()-timer <= GDLOX_CMD_DELAY) {
    if(mpGdlox->available() >= minReplyLength) { 
      timer = 0;
      break;
    }
  }
  if(timer != 0) return false; //Timed out!
  else return true;
}

GoldeloxStatus Goldelox::ls(byte* result, int len) {
  long start_time = millis();
  if(!issueCommand("@d*\0", 4, 1)) return TIMED_OUT; //Timed out!  
  byte in;
  for(int x=0;x<len;x++) {
    if(mpGdlox->available() < 1) {
      if((millis()-start_time) >= GDLOX_CMD_DELAY) return TIMED_OUT;
      x--;
      continue;
    }
    in=mpGdlox->read();
    if(in != GDLOX_ACK) result[x]=in;
    else { 
      result[x]=0;
      break;
    }
  }
  
  //Drain buffer of garbage
  while(mpGdlox->available()) mpGdlox->read();
  
  return OK;
}

GoldeloxStatus Goldelox::_write(const char* filename, boolean append, byte* data, int len) {
  //HACK: this bypasses issueCommand in the name of efficiency (don't want to build a new string).
  //Rethink the API and fix it.
  mpGdlox->print("@t");
  mpGdlox->print((char)(append ? 0x80 : 0x00));
  mpGdlox->print(filename);
  mpGdlox->print('\0');
  //Write len (big-endian)
  mpGdlox->print((char)((len>>24)&0xFF));
  mpGdlox->print((char)((len>>16)&0xFF));
  mpGdlox->print((char)((len>>8)&0xFF));
  mpGdlox->print((char)((len)&0xFF));
  for(int x=0; x<len; x++) {
    mpGdlox->print((char)data[x]);
  }
  //Look for trailing ACK.
  long start_time = millis();
  while(millis()-start_time < GDLOX_CMD_DELAY) {
    if(mpGdlox->available()) {
      if(mpGdlox->read() == GDLOX_ACK) return OK;
    }
  }
  return ERROR;
}

GoldeloxStatus Goldelox::write(const char* filename, byte* data, int len) {
  return _write(filename, false, data, len);
}  
GoldeloxStatus Goldelox::append(const char* filename, byte* data, int len) {
  return _write(filename, true, data, len);
}

GoldeloxStatus Goldelox::del(const char* filename) {
  //HACK: this bypasses issueCommand in the name of efficiency (don't want to build a new string).
  //Rethink the API and fix it.
  mpGdlox->print("@e");
  mpGdlox->print(filename);
  mpGdlox->print('\0');
  
  //Look for trailing ACK.
  long start_time = millis();
  while(millis()-start_time < GDLOX_CMD_DELAY) {
    if(mpGdlox->available()) {
      if(mpGdlox->read() == GDLOX_ACK) return OK;
    }
  }
  return ERROR;
}

GoldeloxStatus Goldelox::read(const char* filename, byte* data, int len) {
  //TODO: Implement.
  return ERROR;
}

