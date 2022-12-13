#!/usr/bin/env python3
import sys
import fcntl
from select import select
import struct
import os
import time
import socket
from scapy.all import *

TUNSETIFF = 0x400454ca
IFF_TUN   = 0x0001
IFF_TAP   = 0x0002
IFF_NO_PI = 0x1000

IP_A = socket.gethostbyname(socket.gethostname()) # gets ip of client 
PORT = 9090

# Create the tun interface
tun = os.open("/dev/net/tun", os.O_RDWR)
ifr = struct.pack('16sH', b'tun%d', IFF_TUN | IFF_NO_PI)
ifname_bytes  = fcntl.ioctl(tun, TUNSETIFF, ifr)

# Get the interface name
ifname = ifname_bytes.decode('UTF-8')[:16].strip("\x00")
os.system("ip addr add 192.168.53.99/24 dev {}".format(ifname))
os.system("ip link set dev {} up".format(ifname))
os.system("ip route add 10.0.0.0/22 dev {} via 0.0.0.0".format(ifname))
print("Interface Name: {}".format(ifname))

# Create UDP socket
sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
sock.bind((IP_A, PORT))

# simple client login

print("Username", end=":")
username = sys.argv[1]
sock.sendto(str.encode(username), ("172.16.123.142", 9090))

user_res, (ip,port) = sock.recvfrom(2048)

if user_res == str.encode("false") : 
	print("Invalid username!")
	print("Connection closed!")
	sys.exit()
	
print("Password", end =":")

password = sys.argv[2]
sock.sendto(str.encode(password), ("172.16.123.142", 9090))
pass_res, (ip,port) = sock.recvfrom(2048)

if pass_res == str.encode("false") : 
	print("Wrong password!")
	print("Connection closed!")
	sys.exit()
	
print("VPN connection established!")

while True:
	# this will block until at least one interface is ready
	ready, _, _ = select([sock, tun], [], [])
	for fd in ready:
		if fd is sock:
			# Read data from VPN Server UDP socket
			data, (ip, port) = sock.recvfrom(2048)
			pkt = IP(data)
			#print("From socket <==: {} --> {}".format(pkt.src, pkt.dst))
			# Write packet to tunnel
			os.write(tun, bytes(pkt))
		if fd is tun:
			# Get a packet from the tun interface
			packet = os.read(tun, 2048)
			# Send the packet to VPN Server UDP socket
			sock.sendto(packet, ("172.16.123.142", 9090))
			pkt = IP(packet)
			#print("From tun ==>: {} --> {}".format(pkt.src, pkt.dst))

