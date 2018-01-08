//#include "ets_sys.h"
#include "osapi.h"
#include <esp8266_peri.h>
#include <Arduino.h>
#include "AnEnc.h"

enum EncActions {
  ACT_NONE=0,
  ACT_PRESS,
  ACT_RCW,
  ACT_RCCW,
};

#define NOP [](){}

static void adcISR();
// Pass data from ISR to class
static volatile long next;
volatile static int _state; // Current state
volatile int adc;
static volatile bool fresh=false;

static int _idle;
static int _press; 
static int _cw;    
static int _ccw;   
static int _ist;
static long _lAct; // Last activity timestamp
static AnEnccbkl_t _cbk_press;
static AnEnccbkv_t _cbk_rcw;
static AnEnccbkv_t _cbk_rccw;

void AnEnc_init(int thr_idle, int thr_press, int thr_cw, int thr_ccw, int thr_ist)
{
  _idle=thr_idle;
  _press=thr_press;
  _cw=thr_cw;
  _ccw=thr_ccw;
  _ist=thr_ist;
  _state=ACT_NONE;      // last valid level
  _cbk_press=[](long){};
  _cbk_rcw=NOP;
  _cbk_rccw=NOP;
/*
  // Setup ISR to read ADC
  noInterrupts();
  timer0_isr_init();
  timer0_attachInterrupt(adcISR);
  next=ESP.getCycleCount()+microsecondsToClockCycles(1000);
  timer0_write(next);
  interrupts();
*/
}

// Handle callbacks outside of ISR
void AnEnc_poll() {
  static int prev=ACT_NONE;

  long now=micros();

  // This block should be the ISR...
  static long last=0;
  if(now-(last+5000) >= 0) {
    adcISR(); // Simulate 200Hz sampling (faster sampling blocks WiFi...)
    last=now;
  }
  
  if(!fresh)
    return;
  fresh=false;

  now=millis();
//Serial.println(adc);

  if(_state==ACT_NONE) {
    if(prev==ACT_PRESS) { // Releasing button
      long dur=now-_lAct;
      // Avoid false triggering
      if(dur > 10)
        _cbk_press(now - _lAct);
    }
  } else if(prev==ACT_NONE) { // Need only to consider falling edge
    _lAct=now;
    switch(_state) {
      case ACT_PRESS:
        // Do nothing (cbk at release)
        break;
      case ACT_RCW:
        _cbk_rcw();
        break;
      case ACT_RCCW:
        _cbk_rccw();
        break;
    }
  }
  prev=_state;  // do not call again cbks
}

AnEnccbkl_t AnEnc_onPress(AnEnccbkl_t cbk)
{
  AnEnccbkl_t old=_cbk_press;
  _cbk_press=cbk;
  return old;
}

AnEnccbkv_t AnEnc_onRotCw(AnEnccbkv_t cbk)
{
  AnEnccbkv_t old=_cbk_rcw;
  _cbk_rcw=cbk;
  return old;
}

AnEnccbkv_t AnEnc_onRotCcw(AnEnccbkv_t cbk)
{
  AnEnccbkv_t old=_cbk_rccw;
  _cbk_rccw=cbk;
  return old;
}

bool AnEnc_isPressed()
{
  return _state==ACT_PRESS;
}
static /* ICACHE_RAM_ATTR */ void adcISR()
{
/*
  next+=microsecondsToClockCycles(2500); // 2.5ms => 400Hz (max freq to avoid exceptions)
  timer0_write(next); // Rearm early, to maximize precision
*/
  int tout=analogRead(0);

  if(tout>_idle) {
    _state=ACT_NONE;
  } else if(_state==ACT_NONE) {
    if(tout<_press) {
      _state=ACT_PRESS;
    } else if(tout>(_cw-_ist) && tout<(_cw+_ist)) {
      _state=ACT_RCW;
    } else if(tout>(_ccw-_ist) && tout<(_ccw+_ist)) {
      _state=ACT_RCCW;
    }
  }
  adc=tout;
  fresh=true;
}


