#ifndef GOLDELOX_H
#define GOLDELOX_H

#define GDLOX_DEVICE_TYPE 3
#define GDLOX_ACK 0x06
#define GDLOX_NAK 0x15

#define GDLOX_POWERUP_DELAY 500
#define GDLOX_CMD_DELAY 500

#include <NewSoftSerial.h>

enum GoldeloxStatus{ OK, TIMED_OUT, ERROR, NO_CARD };

class Goldelox
{
private:
  NewSoftSerial gdlox;
  boolean issueCommand(const char*, byte minReplyLength);
public:
  Goldelox(byte rx, byte tx);
  GoldeloxStatus begin(int speed);
  GoldeloxStatus initializeNewCard();
};
#endif
