/*
 * PCA9555 library
 */
#pragma once
#include <Wire.h>

enum class PCA9555Status : uint8_t
{
  OK=0,
  E_RANGE,    // Address out of range
  E_NOTFOUND, // Unresponsive device
};

enum class PCA9555Port : uint8_t
{
        A = 0,
        B = 1
};

class PCA9555 {
  public:
    PCA9555(uint8_t id=0, TwoWire &bus=Wire)
      : _addr(0x20+id)    // Actual I2C address
      , _needsUpd(false)  // Nothing to update
      , _iodir(0xffff)    // All inputs (weak pullups always active)
      , _bus(bus)         // Interface to use
      {};
    PCA9555Status begin(); // Validates settings
    PCA9555Status portMode(PCA9555Port p, uint8_t dirMask);
    PCA9555Status inputInv(uint16_t inv);

    bool digitalWrite(uint8_t io, bool state, bool sync=true);
    bool digitalRead(uint8_t io, bool sync=true);
    uint8_t readPort(PCA9555Port p);
    void writePort(PCA9555Port p, uint8_t outs);
    void write(uint16_t outs);

  private:
    uint8_t _addr;    // I2C address of PCA9555
    bool _needsUpd;   // Async write pending
    uint16_t _state,  // State of ports
            _iodir;   // Direction registers
    TwoWire &_bus;
};
