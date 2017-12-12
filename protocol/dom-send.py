#!/usr/bin/python3
# Multicast sender
# Adapted from: https://stackoverflow.com/questions/603852/multicast-in-python
# Syntax: testmcast-dom-send ip command
# example testmcast-dom-send 192.168.1.78 CD00T
import sys
import socket

#ANY = "0.0.0.0" 
#MCAST_ADDR = "239.255.215.74"
MCAST_PORT = 55114

# Create a UDP socket
sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM, socket.IPPROTO_UDP)

# Allow multiple sockets to use the same PORT number
sock.setsockopt(socket.SOL_SOCKET,socket.SO_REUSEADDR,1)

# Bind to the port that we know will receive multicast data
#sock.bind((ANY,MCAST_PORT))

# Tell the kernel that we want to add ourselves to a multicast group
# The address for the multicast group is the third param
#status = sock.setsockopt(socket.IPPROTO_IP, socket.IP_ADD_MEMBERSHIP, socket.inet_aton(MCAST_ADDR) + socket.inet_aton(ANY))
#status = sock.setsockopt(socket.IPPROTO_IP, socket.IP_ADD_MEMBERSHIP, socket.inet_aton(MCAST_ADDR))

# setblocking(0) is equiv to settimeout(0.0) which means we poll the socket.
# But this will raise an error if recv() or send() can't immediately find or send data. 
sock.setblocking(1)

#sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM, socket.IPPROTO_UDP)
#sock.setsockopt(socket.IPPROTO_IP, socket.IP_MULTICAST_TTL, 2)
sock.sendto(bytes(sys.argv[2], "utf-8"), (sys.argv[1], MCAST_PORT))
print(sock.recv(1500).decode("utf-8"), end='', flush=True)
