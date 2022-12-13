#!/usr/bin/env python3

import fcntl
from select import select
import struct
import os
import time
from scapy.all import *

TUNSETIFF = 0x400454ca
IFF_TUN   = 0x0001
IFF_TAP   = 0x0002
IFF_NO_PI = 0x1000

IP_A = "172.16.123.142"
PORT = 9090

# Create the tun interface
tun = os.open("/dev/net/tun", os.O_RDWR)
ifr = struct.pack('16sH', b'tun%d', IFF_TUN | IFF_NO_PI)
ifname_bytes  = fcntl.ioctl(tun, TUNSETIFF, ifr)

# Get the interface name
ifname = ifname_bytes.decode('UTF-8')[:16].strip("\x00")
os.system("ip addr add 192.168.53.98/24 dev {}".format(ifname))
os.system("ip link set dev {} up".format(ifname))
print("Interface Name: {}".format(ifname))

#create and configure UDP socket
sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
sock.bind((IP_A, PORT))

# simple client login

username = str.encode("gors")
password = str.encode("gors")
user, (ip,port) = sock.recvfrom(2048)

if user != username:
	sock.sendto(str.encode("false"), ("172.31.255.101", 9090))
	sys.exit()
else : sock.sendto(str.encode("true"), ("172.31.255.101", 9090))

pw, (ip,port) = sock.recvfrom(2048)

if password != pw:
	sock.sendto(str.encode("false"), ("172.31.255.101", 9090))
	sys.exit()
else : sock.sendto(str.encode("true"), ("172.31.255.101", 9090))


while True:
	# this will block until at least one interface is ready
	ready, _, _ = select([sock, tun], [], [])
	for fd in ready:
		if fd is sock:	# packet coming from the client 
			# Read from UDP socket
			data, (ip, port) = sock.recvfrom(2048)
			pkt = IP(data)
			# Write the packet to the tun interface (traffic to the internal network)
			os.write(tun, bytes(pkt))
			print("From socket <==: {} --> {}".format(pkt.src, pkt.dst))
		if fd is tun:	# response from the host (comes throught VPN server tunnel)
			# Read from tunnel
			packet = os.read(tun, 2048)
			pkt = IP(packet)
			print("From tun ==>: {} --> {}".format(pkt.src, pkt.dst))
			# Write the packet to the client socket
			sock.sendto(packet, ("172.31.255.101", 9090))
			

