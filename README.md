# HomeAutomation

This project consists of a protocol spec, the design files for physical nodes and the source code that glues it together.

## Protocol

[Full protocol description](protocol/protocol.txt) is available, together with examples of a [monitor](protocol/dom-monitor.py) and a [sender](protocol/dom-send.py). The protocol is text-based to ease debugging.

The basic concept is that **no coordinator** is needed for the nodes to work after the initial configuration. There must not be a single point of (catastrophic) failure.

The most critical element is currently the access point, that is so cheap that having a cold-standy one should not be a problem.

Messages must support authentication and encryption to guarantee that confidential packets or dangerous commands are actually sent from an authorized source.

**Warning**: protocol is still **work in progress** and **unstable**: non-backward-compatible changes are still possible! Only after 1.0.0 milestone changes that introduce incompatibilities will be delayed till 2.0.0 .

## HW

All HW designs are in [KiCAD](http://kicad-pcb.org/) 4.0.2 (currently, will follow what's packaged in latest [Ubuntu LTS](https://www.ubuntu.com/)) so not to require nonstandard installs.

### [DomoNode](domonode-1.1)

A node based on ESP8266 to be mounted in a 6-modules DIN rail enclosure.

Provides 4 SSR outputs and an expansion bus connector.

[OSHW] IT000001 | [Certified open source hardware](https://oshwa.org/cert)

### [DomoNode-inout](domonode-inout) 1.1.1

An expansion node to be mounted in a 6-modules DIN rail enclosure.

Provides 4 SSR outputs, 3 220V opto-isolated inputs and 8 5V GPIOs.

Uses a PCA9555 for GPIOs and a 24C02 to store the expander config.

[OSHW] IT000002 | [Certified open source hardware](https://oshwa.org/cert)

### DomoDisp (WIP)

A node based on ESP8266 that provides physical user interface to the system. Uses a 1.8" ST7735 LCD color display and a rotative encoder. Designed to be mounted either on the front of a DIN rail box or inside a 4-modules Vimar Plana frame -- other frames could work but are untested.

Requires a 5V power source (possibly a DomoNode-inout).

## SW

Still work in progress.

A sketch with partial protocol implementation is under test.
