#!/usr/bin/python3
# Multicast sender
# Adapted from: https://stackoverflow.com/questions/603852/multicast-in-python
# Syntax: testmcast-dom-send ip command
# example testmcast-dom-send 192.168.1.78 CD00T
import sys
import socket

#ANY = "0.0.0.0" 
MCAST_ADDR = "239.255.215.74"
MCAST_PORT = 55114
receive = True

# This maps error codes to human-readable strings (see Domotic.h)
ErrorCodes={
  "01": "ERR_CTX",
  "80": "CMD_BAD",
  "81": "CMD_UNS",
  "82": "CMD_RANGE",
  "83": "CMD_SIZE",
  "90": "INF_BAD",
  "91": "INF_RANGE",
  "FE": "UNSUPP",
  "FF": "UNKNOWN"
}

server = sys.argv[1];
if ( "*" == server ) :
    server=MCAST_ADDR
    receive = False

# Create a UDP socket
sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM, socket.IPPROTO_UDP)

# Allow multiple sockets to use the same PORT number
sock.setsockopt(socket.SOL_SOCKET,socket.SO_REUSEADDR,1)

# setblocking(0) is equiv to settimeout(0.0) which means we poll the socket.
# But this will raise an error if recv() or send() can't immediately find or send data. 
sock.setblocking(1)

#sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM, socket.IPPROTO_UDP)
#sock.setsockopt(socket.IPPROTO_IP, socket.IP_MULTICAST_TTL, 2)
sock.sendto(bytes(sys.argv[2], "utf-8"), (server, MCAST_PORT))
sock.settimeout(1.0)

if ( receive ) :
    #print(sock.recv(1500).decode("utf-8"), end='', flush=True)
    ans=sock.recv(1500).decode("utf-8")
    print(ans, flush=True)
    if(ans[:1]!="A") :
        sys.exit("Invalid packet")
    else :
        print("Answer packet")
    if(ans[1:3]=="00") :
        print(" Ok (No error)")
    else :
        sys.exit(ErrorCodes[ans[1:3]]);
