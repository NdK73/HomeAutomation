#pragma once
#include "web.h"
#include "globals.h"

// On GPIOs: HIGH = ON, LOW = OFF
enum {
  RL_1=15,
  RL_2=14,
  RL_3=13,
  RL_4=12
};

// On ext
enum {
  RL_6=0,
  RL_5,
  IN_6,
  IN_5,
  IN_4,
  IN_3,
  IN_2,
  IN_1,
  LED_CONN,
  LED_USER,
  LED_1,
  LED_2,
  LED_3,
  LED_4,
  LED_5,
  LED_6,
};

#define LED_ON HIGH
#define LED_OFF LOW
#define RL_ON HIGH
#define RL_OFF LOW

void inline relay(uint8_t n, bool state) {
  int r=0;
  if(n<=4) { // Direct GPIO
    switch(n) {
      case 1:
        r=RL_1;
        break;
      case 2:
        r=RL_2;
        break;
      case 3:
        r=RL_3;
        break;
      case 4:
        r=RL_4;
        break;
      default:
        return;
    }
    digitalWrite(r, state);
  } else {
    switch(n) {
      case 5:
        r=RL_5;
        break;
      case 6:
        r=RL_6;
        break;
      default:
        return;
    }
    ext.digitalWrite(r, state);
  }
  status[ST_RL1+n-1]=state?'1':'0';
}

// returns if given input is active and updates status string
bool inline input(uint8_t inputs, uint8_t in) {
  if(in>6) return false; // Only 6 inputs available
  bool i=inputs & (1<<(in - 8));
  status[ST_IN1+5-(in-IN_6)]=i?'1':'0';
  return i;
}

void inline led(int l, bool s) {
  status[ST_LD1+l-LED_1]=(s==LED_ON)?'1':'0';
  ext.digitalWrite(l, s);
}
