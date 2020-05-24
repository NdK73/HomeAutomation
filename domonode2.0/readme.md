## DomoNode 2.0

**Do not use:**. This folder is just for reference.

Evolution of DomoNode, but offers 6 inputs @ 230V, 6 SSR 2A@230V (each one have its own independent in and out lines, for maximum flexibility) and 8 independent LEDs, still in a 6-modules DIN rail enclosure. Kept SW compatibility with basic DomoNode (just the first 4 outputs), but different external connections.

Same expansion bus connector as the DomoNode 1.1.

I kept 2mm between L and N lines and it **ought** to be double-insulation, but it's actually not required: the user can't touch anything that is not already expected to be at 230V (screws in connectors) without opening the enclosure (the expansion connector **MUST NOT** be exposed).

The board requires two v-cuts around the central part, drawn on ECO2 layer (but not visible in the image). Once the two boards gets separated, the smaller one have to be mounted over the bigger one, using 2 **plastic** spacers (M3x15mm) and suitable 1x14 pins headers.

**Note**: Designed in KiCAD 5.1.5.

#### Known Problems

Fixed in v2.1:
 - **EPIC FAIL**: pulldowns instead of pullups on SDA and SCL :( -- it seems to work OK with internal ones, but could be a bit less stable
 - **FIXABLE FAIL**: SDA and SCL are reversed -- use Wire.begin(5,4);
 - Possible glitches at powerup on outputs: after a short power fail (~5s) MCP23017 outputs remain in the last state till setup() resets 'em (or indefinitely if you enter programming mode)
 - Trace for 3v3 to expansion connector is too thin
 - Traces from SSRs to Qn and from Qn to GND are too thin
 - Many traces are too long (to avoid vias)
 - You'll have to cut out about 2mm from the top of the break-out zone to allow the locks on the removable part of the connectors to engage

No need to fix in 2.1:
 - MCP23017 reset line goes to 3v3 instead of 5V
