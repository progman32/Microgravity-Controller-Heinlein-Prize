#ifndef PINS_H
#define PINS_H

#define LEDPIN 13


//LOGGER UNIT
//INPUTS
#define LU_IN_GDLOX_RX 2
#define LU_IN_COM1_RX 5
//OUTPUTS
#define LU_OUT_GDLOX_TX 3
#define LU_OUT_GDLOX_RST 6
#define LU_OUT_COM1_TX 4


//TIME CONTROLLER
//INPUTS
#define TC_IN_RXi 0
#define TC_IN_REDUN_TAKEOVER_CHECK 9
#define TC_IN_RSTPIN 12
//OUTPUTS
#define TC_OUT_TXi 1
#define TC_OUT_POWER_SR_D 2
#define TC_OUT_POWER_SR_C 3
#define TC_OUT_POWER_SR_L 4
#define TC_OUT_EXP_TRIGGER_RELAY_ON 5
#define TC_OUT_EXP_TRIGGER_RELAY_OFF 6
#define TC_OUT_RST_REQ 8
#define TC_OUT_REDUN_SR_D 10
#define TC_OUT_REDUN_SR_C 11
//BIDI
#define TC_INOUT_REDUNDANCY 7
#endif
