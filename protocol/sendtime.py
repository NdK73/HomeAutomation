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
keyid="0001"
# On my machine this script takes ~2s to generate the signature: add it to timestamp!
signtime=2

### Actual logic
#timestamp="%08x"%hex(signtime+int(time.time()))[2:-1]
now=time.time()
timestamp="%08x"%(signtime+int(now))
# Parse system's TZ and DST for the last part of the command
tz_dst = int(time.timezone/-3600)
tz_dst = tz_dst&0x1f + (1<<5)
#*(1+time.localtime(now).tm_isdst)

timeupdcmd="T00"+timestamp+"%02x"%tz_dst

m=keyid + timeupdcmd
#print "m=", m

# Key taken from reference code at https://ed25519.cr.yp.to/software.html
sk=binascii.unhexlify("9d61b19deffd5a60ba844af492ec2cc44449c5697b326919703bac031cae7f60")
pk=binascii.unhexlify("d75a980182b10ab7d54bfed3c964073a0ee172f3daa62325af021a68f707511a")

s = binascii.hexlify(ed25519.signature(m,sk,pk))

cmd = "S"+keyid+s+timeupdcmd
#print cmd

sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM, socket.IPPROTO_UDP)
sock.setsockopt(socket.SOL_SOCKET,socket.SO_REUSEADDR,1)
sock.setblocking(1)
sock.sendto(cmd, (MCAST_ADDR, MCAST_PORT))
