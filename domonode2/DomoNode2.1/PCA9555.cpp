#include "PCA9555.h"
#include <Arduino.h>

enum PCA9555Cmd : uint8_t {
  iA=0, //  Input port 0
  iB,   //  Input port 1
  oA,   //  Output port 0
  oB,   //  Output port 1
  invA, //  Polarity inversion for port 0
  invB, //  Polarity inversion for port 1
  cfgA, //  Config port 0
  cfgB  //  Config port 1
};

PCA9555Status PCA9555::begin() {
  if(_addr<0x20 || _addr>0x27) {
    return PCA9555Status::E_RANGE;
  }
  _bus.beginTransmission(_addr);
  if(_bus.endTransmission()) {
    return PCA9555Status::E_NOTFOUND;
  }
  return PCA9555Status::OK;
}

PCA9555Status PCA9555::portMode(PCA9555Port p, uint8_t dirMask)
{
  if(PCA9555Port::A==p) {
    _iodir=_iodir&0xff00 | dirMask;
  } else {
    _iodir=(uint16_t(dirMask)<<8)|(_iodir&0xff);
  }
  _bus.beginTransmission(_addr);
  _bus.write(PCA9555Cmd::cfgA+static_cast<uint8_t>(p));
  _bus.write(dirMask);
  if(_bus.endTransmission())
    return PCA9555Status::E_NOTFOUND;

  return PCA9555Status::OK;
}

PCA9555Status PCA9555::inputInv(uint16_t inv)
{
  _bus.beginTransmission(_addr);
  _bus.write(PCA9555Cmd::invA);
  _bus.write(inv);
  if(_bus.endTransmission())
    return PCA9555Status::E_NOTFOUND;

  return PCA9555Status::OK;
}

bool PCA9555::digitalWrite(uint8_t io, bool state, bool sync)
{
  uint8_t port=0;
  if(io>15) return false;
  if(io>7) port=1;

  if(state) {
    _state|=1<<io;
  } else {
    _state&=~(1<<io);
  }

  if(sync) {
    uint8_t pv=port?(_state>>8):(_state&0xff);
    _bus.beginTransmission(_addr);
    _bus.write(PCA9555Cmd::oA+port);
    _bus.write(pv);
    _bus.endTransmission();
  } else {
    _needsUpd=true;
  }
  return state;
}

bool PCA9555::digitalRead(uint8_t io, bool sync)
{
  bool state=false;
  if(io>15) return false;

  if(sync) {
    PCA9555Port port=PCA9555Port::A;
    if(io>7) port=PCA9555Port::B;

    readPort(port); // updates _state
  }
  state=_state&(1<<io);
  return state;
}

uint8_t PCA9555::readPort(PCA9555Port p)
{
  uint16_t pv;

  _bus.beginTransmission(_addr);
  _bus.write(static_cast<uint8_t>(p));
  _bus.endTransmission();
  _bus.requestFrom(_addr, static_cast<uint8_t>(1));
  pv=_bus.read();
//    pv|=_bus.read()<<8;
  _bus.endTransmission();
  uint16_t outs=_state&(~_iodir);
  if(PCA9555Port::A==p) {
    _state&=0xff00;
  } else {
    pv<<=8;
    _state&=0x00ff;
  }
  _state|=(pv&_iodir)|outs;
  return pv;
}

void PCA9555::writePort(PCA9555Port p, uint8_t outs)
{
  _state=(_state&_iodir)|((outs<<(PCA9555Port::A==p?0:8))& ~(_iodir)); // keep input states, set outputs
  _bus.beginTransmission(_addr);
  _bus.write(PCA9555Cmd::oA+static_cast<uint8_t>(p));
  _bus.write(outs);
  _bus.endTransmission();
}

/* Write all outputs at once */
void PCA9555::write(uint16_t outs)
{
  _state=(_state&_iodir)|(outs& ~(_iodir));
  _bus.beginTransmission(_addr);
  _bus.write(PCA9555Cmd::oA);
  _bus.write(_state);
  _bus.endTransmission();
  _needsUpd=false; // synchronized
}
