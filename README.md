# HomeAutomation

This project consists of a protocol spec, the design files for physical nodes and the source code that glues it together.

## Protocol

[Full protocol description](protocol/protocol.txt) is available, together with examples of a [monitor](protocol/dom-monitor.py) and a [sender](protocol/dom-send.py). The protocol is text-based to ease debugging.

**ClearSky technology inside**: the basic concept is that **no coordinator** is needed for the nodes to work after the initial configuration. There must not be a single point of (catastrophic) failure. And obviously no "cloud" (hence **ClearSky**) service is needed either: you, and only you, decide if/when/which data can exit from your network!

The most critical element is currently the access point, that is so cheap that having a cold-standby one should not be a problem.

Messages must support authentication and encryption to guarantee that confidential packets or dangerous commands are actually sent from an authorized source.

**Warning**: protocol is still **work in progress** and **unstable**: non-backward-compatible changes are still possible! Only after 1.0.0 milestone changes that introduce incompatibilities will be delayed till 2.0.0 .

## HW

All HW designs are in [KiCAD](http://kicad-pcb.org/) 4.0.x (will follow what's packaged in latest [Ubuntu LTS](https://www.ubuntu.com/)) so not to require nonstandard installs.

DIN-rail mounted devices are designed for the 6-modules [AK-DR-04C enclosure](https://www.aliexpress.com/item/-/1733706262.html).

Other devices are designed to be compatible with Vimar Plana series, but should fit other series with minor adjustements.

In the given layouts I use KF2EDGK **right-angle** (KF-2P, KF-4P or KF-6P) 5.08mm (or 3.81mm) pitch connectors so I can detach the node from power without having exposed wires with dangerous voltage laying around (and can reconnect it quickly and safely). Be sure to buy the angled version or you'll have a lot of extra work to bend the pins!

**Warning**: I did my best to keep the costs down without sacrificing security. Choice of the power brick is really important for security: **never** use HLK-PM01 clones unless you know what you're doing -- and even then it's better to avoid using 'em! If in doubt buy directly from [Hi-Link](http://www.hlktech.net/) (sorry, plain http, not https...). Probably the boards can't pass CE certification only because of conducted emissions, but since I don't have access to test equipment **use at your own risk** (or have 'em certified).

SSRs and relays should always be sourced from reputable sources. If in doubt, do not load 'em near the limits. For example never try a 400W load on a 2A SSR -- use a servo-relay. 2A SSRs are good for a couple of LED lamps, or a 40W bulb.

### [DomoNode](domonode) 1.1

A node based on ESP8266 to be mounted in a 6-modules DIN rail enclosure.

Provides 4 SSR outputs and an expansion bus connector.

[OSHW] IT000001 | [Certified open source hardware](https://oshwa.org/cert)

### [DomoNode-inout](domonode-inout) 1.1.1

An expansion node to be mounted in a 6-modules DIN rail enclosure.

Provides 4 SSR outputs, 3 220V opto-isolated inputs and 8 5V GPIOs.

Uses a PCA9555 for GPIOs and a 24C02 to store the expander config.

[OSHW] IT000002 | [Certified open source hardware](https://oshwa.org/cert)

### [DomoDisp](domodisp) 1.1

A node based on ESP8266 that provides physical user interface to the system.
Uses a 1.8" ST7735 LCD color display and a rotative encoder.
It is designed to be mounted either on the front of a DIN rail box or inside
a 4-modules Vimar Plana frame -- other frames could work but are untested.

Requires a 5V power source (possibly a DomoNode-inout, but a dedicated module
with power and relay will be published as soon as it's ready).

Includes sample "lib" for reading the encoder (needs cleanup... there still
are traces of experiments I did to read ESP's ADC from an interrupt routine).

The display can be managed by [TFT_eSPI](https://github.com/Bodmer/TFT_eSPI)
lib and works up to 27MHz (only 10MHz when testing on breadboard) -- remember
to edit User_setup.h before compiling your sketch!

[OSHW] IT000003 | [Certified open source hardware](https://oshwa.org/cert)

### [DomoDispV2](domodisp2) 2.0

**Future** release using shared SPI bus for display, freeing 2 GPIOs. One of
the freed GPIOs is used to control dimming.

**WARNING**: FW is incompatible with old DomoDisp!

### [DomoNode-inputs](domonode-inputs) 1.0

WIP - Still untested !

An expansion board with 11 inputs @ 220V and 5 low-voltage IOs.

When inputs are powered from 220V they get read as logic low.
Low-voltage inputs are directly connected to PCA9555 lines so there's a weak
(100k) pullup active at powerup. If you want to use 'em as outputs remember
to use inverted logic to avoid glitches at powerup.

### [DomoSwitch](domoswitch) 1.0

WIP

A node that hosts 2 relays (or SSRs -- double footprint), 2 pushbuttons and 2
RGB LEDs. Split in 3 sub-boards to fit behind a 2-modules
[Vimar Plana 14042 hole cover](https://www.vimar.com/it/it/catalog/product/index/code/14042).

The buttons and LEDs are placed so that they match the markers inside the 14042
cover, simplifying the assemply.

**TODO**: support to enclose the dangerous sub-boards (I'll have to prototype it
with a 3D printer, but will need a resin cast for the final version).

## SW

Still work in progress.

A sketch with [partial protocol implementation](https://github.com/NdK73/Domotic)
is under test.

Expansions (DomoNode-inout, DomoNode-inputs) are autodetected and (mostly)
autoconfigured by library. The algorithm is:
  - for each I2C bus address from 0x50 to 0x57
    - if slave found at 0x5X:
      - determine memory size:
        - try reading location 0 using 8-bit address (24LC02)
        - if it fails, try reading location 0 using 16-bit address (that would
          overwrite location 0 in 8-bit devices, but we already ruled out this
          is a 8-bit one...)
        - if this fails too, abort
      - read device config from it
    - if slave is not found at 0x5X, test if a slave is present at 0x2X (PCA9555 in DomoNode-inout 1.0)
      - if PCA9555 is found, create a fake config for 4 outs and 3 ins (TODO: how to handle other GPIOs?)
    - instantiate the correct device class

The EEPROM must contain at least these 16 bytes:
  - 0x00 1 byte Expansion type (Official "registry" is kept in lib sources)
  - 0x01 1 byte Release code (every new HW release increments the release code)
  - 0x02 2 bytes Backup of 0x00 and 0x01
  - 0x04 4 bytes "unique" board ID
  - 0x08 8 bytes reserved

The remaining space is used as defined by device class (usually for IO
configuration and descriptions).
The board ID must be "unique enough" so that the master node can detect that an
expansion have been changed and invalidate the old mappings.
