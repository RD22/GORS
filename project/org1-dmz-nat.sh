#!/bin/bash

echo ">>>>> networks"
# public network
sudo docker network create public_net --subnet=172.31.255.0/24 --gateway=172.31.255.254
# private networks of org1
sudo docker network create client_net --subnet=10.0.1.0/24 --gateway=10.0.1.1
sudo docker network create server_net --subnet=10.0.2.0/24 --gateway=10.0.2.1
#public network of org1(DMZ)
sudo ip l set ens21 up
sudo docker network create -d macvlan --subnet=172.16.123.128/28 --gateway=172.16.123.140 -o parent=ens21 dmz_net

# Let docker know about the DMZ network, and NAT it
sudo ip route add 172.16.123.128/28 via 172.31.255.253
sudo iptables -t nat -A POSTROUTING -s 172.16.123.128/28 -o eth0 -j MASQUERADE

# client and server
echo ">>>>> client and server"
sudo docker run -d --net client_net --ip 10.0.1.100 --cap-add=NET_ADMIN --name client netubuntu 
sudo docker exec client /bin/bash -c 'ip r del default via 10.0.1.1'
sudo docker exec client /bin/bash -c 'ip r a 10.0.2.0/24 via 10.0.1.254'
sudo docker exec client /bin/bash -c 'ip r a default via 10.0.1.254'
sudo docker run -d --net server_net --ip 10.0.2.100 --cap-add=NET_ADMIN --name server nginx 
sudo docker exec server /bin/bash -c 'ip r del default via 10.0.2.1'
sudo docker exec server /bin/bash -c 'ip r a 10.0.1.0/24 via 10.0.2.254'
sudo docker exec server /bin/bash -c 'ip r a default via 10.0.2.254'
sudo docker run -d --net dmz_net --ip 172.16.123.130 --cap-add=NET_ADMIN --name public_server nginx
sudo docker exec public_server /bin/bash -c 'ip r del default via 172.16.123.140'
sudo docker exec public_server /bin/bash -c 'ip r a default via 172.16.123.139'
sudo docker exec public_server /bin/bash -c 'ip r a 10.0.0.0/8 via 172.16.123.142'

# internal router
echo ">>>>> internal router"
#sudo docker run -d --net client_net --ip 10.0.1.254 --cap-add=NET_ADMIN --name router netubuntu 
sudo docker run -d --volume /home/theuser/simpleVPN/tun_server.py:/home/tun_server.py --net client_net --ip 10.0.1.254 --cap-add=NET_ADMIN --name router netubuntu
sudo docker network connect server_net router --ip 10.0.2.254
sudo docker network connect dmz_net router --ip 172.16.123.142
sudo docker exec router /bin/bash -c 'ip r d default via 10.0.1.1'
sudo docker exec router /bin/bash -c 'ip r a default via 172.16.123.139'

# external router
echo ">>>>> external router"
sudo docker run -d --rm --net dmz_net --ip 172.16.123.139 --cap-add=NET_ADMIN --name edgerouter netubuntu 
sudo docker network connect public_net edgerouter --ip 172.31.255.253
sudo docker exec edgerouter /bin/bash -c 'ip r d default via 172.16.123.140'
sudo docker exec edgerouter /bin/bash -c 'ip r a default via 172.31.255.254'
sudo docker exec edgerouter /bin/bash -c 'ip r a 10.0.0.0/8 via 172.16.123.142'
sudo docker exec edgerouter /bin/bash -c 'iptables -t nat -F; iptables -t filter -F'
sudo docker exec edgerouter /bin/bash -c 'iptables -t nat -A POSTROUTING -s 10.0.0.0/8 -o eth1 -j MASQUERADE'
sudo docker exec edgerouter /bin/bash -c 'iptables -t filter -P FORWARD DROP'
sudo docker exec edgerouter /bin/bash -c 'iptables -A FORWARD -m state --state ESTABLISHED,RELATED -j ACCEPT'
sudo docker exec edgerouter /bin/bash -c 'iptables -A FORWARD -m state --state NEW -i eth0 -j ACCEPT'
sudo docker exec edgerouter /bin/bash -c 'iptables -A FORWARD -m state --state NEW -i eth1 -d 172.16.123.128/28 -j ACCEPT'

# external host
echo ">>>>> external host"
#sudo docker run -d --rm --net public_net --ip 172.31.255.101 --cap-add=NET_ADMIN --name externalhost netubuntu 
sudo docker run -d --rm --volume /home/theuser/simpleVPN/tun_client.py:/home/tun_client.py  --net public_net --ip 172.31.255.101 --cap-add=NET_ADMIN --name externalhost netubuntu
sudo docker exec externalhost /bin/bash -c 'ip r a 10.0.0.0/8 via 172.31.255.253'
sudo docker exec externalhost /bin/bash -c 'ip r a 172.16.123.128/28 via 172.31.255.253'

# proxy server
echo ">>>>> proxy server"
docker run -d --name squid_proxy -e TZ=UTC --net client_net --ip 10.0.1.253 --cap-add=NET_ADMIN my_squid
sudo docker exec squid_proxy ip r d default via 10.0.1.1
sudo docker exec squid_proxy ip r a default via 10.0.1.254

# dns dmz
echo ">>>>> Dns server"
#sudo docker run -d --net dmz_net --ip 172.16.123.129 --cap-add=NET_ADMIN --name dns_dmz dns_bind9

docker run -d --volume /home/gors/dns/etcbind/db.myorg.net:/etc/bind/db.myorg.net --volume /home/gors/dns/etcbind/named.conf.local:/etc/bind/named.conf.local --rm --net dmz_net --ip 172.16.123.129 --cap-add=NET_ADMIN --name dns_dmz dns_bind9

sudo docker exec dns_dmz ip r d default
sudo docker exec dns_dmz ip r a default via 172.16.123.139
sudo docker exec dns_dmz ip r a 10.0.0.0/8 via 172.16.123.142

sudo docker exec client /bin/bash -c "echo 'nameserver 172.16.123.129' > /etc/resolv.conf"
sudo docker exec server /bin/bash -c "echo 'nameserver 172.16.123.129' > /etc/resolv.conf"
sudo docker exec externalhost /bin/bash -c "echo 'nameserver 172.16.123.129' > /etc/resolv.conf"
