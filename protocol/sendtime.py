#!/usr/bin/python

import sys
import time
import socket
import binascii
import ed25519

### Configuration
MCAST_ADDR = "239.255.215.74"
MCAST_PORT = 55114
# KeyID is unique in the system (to be able to verify, a node must already have the corresponding public or shared key in a keyslot).
keyid="0000"
# On my machine this script takes ~2s to generate the signature: add it to timestamp!
signtime=2

### Actual logic
#timestamp="%08x"%hex(signtime+int(time.time()))[2:-1]
timestamp="%08x"%(signtime+int(time.time()))
#TODO: parse system's TZ and DST for the last part of the command
timeupdcmd="T00"+timestamp+"01"

m=keyid + timeupdcmd
#print "m=", m

# Key taken from reference code at https://ed25519.cr.yp.to/software.html
sk=binascii.unhexlify("9d61b19deffd5a60ba844af492ec2cc44449c5697b326919703bac031cae7f60")
pk=binascii.unhexlify("d75a980182b10ab7d54bfed3c964073a0ee172f3daa62325af021a68f707511a")

s = ed25519.signature(m,sk,pk)

#print binascii.hexlify(s)

cmd = "S"+keyid+s+timeupdcmd
#print cmd

sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM, socket.IPPROTO_UDP)
sock.setsockopt(socket.SOL_SOCKET,socket.SO_REUSEADDR,1)
sock.setblocking(1)
sock.sendto(cmd, (MCAST_ADDR, MCAST_PORT))
