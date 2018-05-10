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

A node based on ESP8266 that provides physical user interface to the system. Uses a 1.8" ST7735 LCD color display and a rotative encoder. Designed to be mounted either on the front of a DIN rail box or inside a 4-modules Vimar Plana frame -- other frames could work but are untested.

Requires a 5V power source (possibly a DomoNode-inout, but a dedicated module with power and relay will be published as soon as it's ready).

Includes sample "lib" for reading the encoder (needs cleanup... there still are traces of experiments I did to read ESP's ADC from an interrupt routine).

The display can be managed by [TFT_eSPI](https://github.com/Bodmer/TFT_eSPI) lib and works up to 27MHz (only 10MHz when testing on breadboard) -- remember to edit User_setup.h before compiling your sketch!

[OSHW] IT000003 | [Certified open source hardware](https://oshwa.org/cert)

### [DomoNode-inputs](domonode-inputs) 1.0

WIP - Still untested !

An expansion board with 11 inputs @ 220V and 5 low-voltage IOs.

When inputs are powered from 220V they get read as logic low. Low-voltage inputs are directly connected to PCA9555 lines so there's a weak (100k) pullup active at powerup. If you want to use 'em as outputs remember to use inverted logic to avoid glitches.

### [DomoSwitch](domoswitch) 1.0

WIP

A node that hosts 2 relays (or SSRs -- double footprint), 2 pushbuttons and 2 RGB LEDs. Split in 3 sub-boards to fit behind a 2-modules [Vimar Plana 14042 hole cover](https://www.vimar.com/it/it/catalog/product/index/code/14042).

The buttons and LEDs are placed so that they match the markers inside the 14042 cover, simplifying the assemply. TODO: support to enclose the dangerous sub-boards (I'll have to prototype it with a 3D printer, but will need a resin cast for the final version).

## SW

Still work in progress.

A sketch with [partial protocol implementation](https://github.com/NdK73/Domotic) is under test.
