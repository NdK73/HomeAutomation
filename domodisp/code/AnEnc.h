#ifndef _ANENC_H
#define _ANENC_h

#include <functional>

typedef std::function<void(void)> AnEnccbkv_t;
typedef std::function<void(long)> AnEnccbkl_t;

// Default values for thresholds
#define ANENC_THR_IDLE 950
#define ANENC_THR_PRESS 100
#define ANENC_THR_CW 700
#define ANENC_THR_CCW 890
#define ANENC_THR_IST 50

void AnEnc_init(
          int thr_idle=ANENC_THR_IDLE,   // when input > _idle => encoder is on a "click" (idle)
          int thr_press=ANENC_THR_PRESS,  // when input < _press => button pressed
          int thr_cw=ANENC_THR_CW,        // in ~= _cw after idle => rotating clockwise
          int thr_ccw=ANENC_THR_CCW,      // in ~= _ccw after idle => totating counterclockwise
          int thr_ist=ANENC_THR_IST);     // max distance from _cw or _ccw to consider a level valid
AnEnccbkl_t AnEnc_onPress(AnEnccbkl_t cbk);
AnEnccbkv_t AnEnc_onRotCw(AnEnccbkv_t cbk);
AnEnccbkv_t AnEnc_onRotCcw(AnEnccbkv_t cbk);
bool AnEnc_isPressed();
void AnEnc_poll();

#endif


