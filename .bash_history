./clean.sh 
ping 1.1.1.1
ip r
ping 192.168.109.254
ip a
ping 1.1.1.1
ls
cd baseimage/
ls
cd ..
ls
cd server/
ls
cd ..
exi
exit
sudo ip route add default 192.168.88.100
sudo ip route d default 192.168.88.1
ip r
ip route d default 192.168.88.1
ip r
ip route d default via 192.168.88.1
sudo ip route d default via 192.168.88.1
sudo ip route add default via 192.168.88.100
ping 1.1.1.1
vim internet_access.sh
ping 1.1.1.1
exit
ping 1.1.1.1
ls
docker ps
cd mail/
cd mailu/
ls
vim run.sh
./run.sh
chmod a+x run.sh
./run.sh
sudo apt-get upgrade
ping 1.1.1.1
firefox
sudo apt install firefox
firefox &
get
firefox
sudo apt-get unistall firefox
sudo apt-get uninstall firefox
sudo apt-get remoce firefox
sudo apt-get remove firefox
firefox
firefox 
ssh 127.0.0.1:8080:127.0.0.1:8080 theuser@192.168.88.101
ssh -L 127.0.0.1:8080:127.0.0.1:8080 theuser@192.168.88.101
sudo ssh -L 127.0.0.1:8080:127.0.0.1:8080 theuser@192.168.88.101
ping 1.1.1.1
ls
docker-compose down
docker image ls
cd ..
ls
cat Dockerfile 
cd simple_mail
mkdir simple_mail
cd simple_mail/
ls
docker image remove mailserver/docker-mailserver:latest 
docker image ls
docker pull docker.io/mailserver/docker-mailserver:latest
docker image ls
vim docker-compose.yml
ufw allow 25
ufw allow 587
ufw allow 465
sudo ufw allow 465
ufw allow 587
sudo ufw allow 587
sudo ufw allow 25
cd /etc/
ls
cat resolv.conf 
mail      IN  A   10.11.12.13
; mail-server for example.com
; Add SPF record
sudo apt install mailutils
mail
sudo mail
example.com. IN  MX 1 mail.example.com.
dns
docker exec mailserver setup config dkim
cd ~
cd mail/
cd simple_mail/
ls
docker-compose up
docker-compose -version
docker-compose upgrade
docker-compose images
sudo apt-get docker-compose
sudo apt-get install docker-compose
vim docker-compose.yml 
docker-compose up
vim docker-compose.yml 
docker-compose up
docker exec mailserver setup config dkim
docker ps
docker ps -a
docker-compose up -d
docker exec mailserver setup config dkim
docker ps
docker-compose down
cd ..
ls
cd dns
ls
ca Dockerfile 
cat Dockerfile 
bind
cd /etc
ls
cd bind
sudo apt updae
sudo apt update
sudo apt-get bind
sudo apt-get install bind
sudo apt-get install bind9 bind9utils bind9-doc
ls
cd bind
ls
cd ..
sudo apt-get remove bind9 bind9utils bind9-doc
cd bind
ls
cd ..
rm -r bind
sudo rm -r bind
cd ~
cd dns
ls
docker pull internetsystemsconsortium/bind9:9.16
docker image ps
docker image ls
ls
cat Dockerfile 
cd ..
docker build --tag dns_bind9 ~/dns
docker ps
docker ps -a
docker image ls
cd /etc/bind
cd /etc/bind/
sudo docker run –d --name=bind9_myorg_auth --net dmz_net --ip 172.16.123.129
sudo docker run –d --name=bind9_myorg_auth --net dmz_net --ip 172.16.123.129 --cap-add=NET_ADMIN dns_bind9
cat org1-dmz-nat.sh 
sudo docker run –d  --net dmz_net --ip 172.16.123.129 --cap-add=NET_ADMIN --name dns_dmz dns_bind9
docker run –d  --net dmz_net --ip 172.16.123.129 --cap-add=NET_ADMIN --name dns_dmz dns_bind9
docker run –d --net dmz_net --ip 172.16.123.129 --cap-add=NET_ADMIN --name dns_dmz dns_bind9
sudo docker run –d --net dmz_net --ip 172.16.123.129 --cap-add=NET_ADMIN --name dns_dmz dns_bind9
docker ps
docker ps -a
sudo docker run –d --net dmz_net --ip 172.16.123.129 --cap-add=NET_ADMIN --name dns_dmz 
sudo docker run –d --cap-add=NET_ADMIN --name dns_dmz dns_bind9
sudo docker run –d 
sudo docker run 
sudo docker run –d --cap-add=NET_ADMIN --name dns_dmz dns_bind9
sudo docker run --cap-add=NET_ADMIN --name dns_dmz dns_bind9
docker ps -a
docker rm dns_dmz 
sudo docker run --net dmz_net --ip 172.16.123.129 --cap-add=NET_ADMIN --name dns_dmz 
sudo docker run --net dmz_net --ip 172.16.123.129 --cap-add=NET_ADMIN --name dns_dmz dns_bind9
sudo docker run --net dmz_net --ip 172.16.123.129 --cap-add=NET_ADMIN --name dns_dmz dns_bind9 -d
docker rm dns_dmz 
docker ps -a
docker ps
./org1-dmz-nat.sh 
sudo docker run --net dmz_net --ip 172.16.123.129 --cap-add=NET_ADMIN --name dns_dmz dns_bind9 -d
sudo docker run -d --net dmz_net --ip 172.16.123.129 --cap-add=NET_ADMIN --name dns_dmz dns_bind9
docker rm dns_dmz 
sudo docker run -d --net dmz_net --ip 172.16.123.129 --cap-add=NET_ADMIN --name dns_dmz dns_bind9
docker ps 
docker exec -it client -c "client ping 172.16.123.129" 
docker exec -it client -c 'client ping 172.16.123.129'
docker exec -it client bash -c 'client ping 172.16.123.129'
docker exec client bash -c 'client ping 172.16.123.129'
docker exec client bash -c 'ping 172.16.123.129'
docker exec client bash -c 'ip r'
docker exec client bash -c 'ping 172.16.123.129'
docker exec -it dns_dmz bash
ls
cd server/
ls
ca Dockerfile 
cat Dockerfile 
cd ..
cd dns/
ls
vim Dockerfile 
docker build --tag dns_bind9 ~/dns
sudo docker run -d --net dmz_net --ip 172.16.123.129 --cap-add=NET_ADMIN --name dns_dmz dns_bind9
docker kill dns_dmz 
docker rm dns_dmz 
sudo docker run -d --net dmz_net --ip 172.16.123.129 --cap-add=NET_ADMIN --name dns_dmz dns_bind9
docker ps
docker exec -it dns_dmz bash
docker exec client bash -c 'ping 172.16.123.129'
docker exec -it client bash
docker exec -it public_server bash
docker exec -it dns_dmz bash
cd ..
cat org1-dmz-nat.sh 
docker exec -it dns_dmz bash
./clean.sh 
vim org1-dmz-nat.sh 
docker ps
./org1-dmz-nat.sh 
vim org1-dmz-nat.sh 
./clean.sh 
./org1-dmz-nat.sh 
docker ps
docker exec -it dns_dmz bash
ping 1.1.1.1
docker ps
docker exec -it dns_dmz bash
sudo docker exec externalhost dig @172.16.123.129 ns.myorg.net
sudo docker exec externalhost dig @172.16.123.129 ns.gors.net
sudo docker exec externalhost -c 'dig @172.16.123.129 ns.gors.net'
cat org1-dmz-nat.sh 
sudo docker exec externalhost bin/bash -c 'dig @172.16.123.129 ns.gors.net'
cd /etc
ls
cd ~
ls
./clean.sh 
cat org1-dmz-nat.sh 
sudo docker run –d --name=bind9_myorg_auth --volume /home/dns/etc/bind/db.gors.net:/etc/bind/db.gors.net --volume /home/dns/etc/bind/named.conf.local:/etc/ bind/named.conf.local --volume /var/cache bind --volume /var/lib/bind\ -- volume --rm --net dmz_net --ip 172.16.123.129 --cap-add=NET_ADMIN dns_bind9
sudo docker run --name=bind9_myorg_auth --volume /home/dns/etc/bind/db.gors.net:/etc/bind/db.gors.net --volume /home/dns/etc/bind/named.conf.local:/etc/ bind/named.conf.local --volume /var/cache bind --volume /var/lib/bind\ -- volume --rm --net dmz_net --ip 172.16.123.129 --cap-add=NET_ADMIN dns_bind9
sudo docker run –d --name=bind9_myorg_auth --volume /home/dns/etc/bind/db.gors.net:/etc/bind/db.gors.net --volume /home/dns/etc/bind/named.conf.local:/etc/ bind/named.conf.local --volume /var/cache bind --volume /var/lib/bind\ --rm --net dmz_net --ip 172.16.123.129 --cap-add=NET_ADMIN dns_bind9
sudo docker run --name=bind9_myorg_auth --volume /home/dns/etc/bind/db.gors.net:/etc/bind/db.gors.net --volume /home/dns/etc/bind/named.conf.local:/etc/ bind/named.conf.local --volume /var/cache bind --volume /var/lib/bind\ --rm --net dmz_net --ip 172.16.123.129 --cap-add=NET_ADMIN dns_bind9
sudo docker run –d --name=bind9_myorg_auth --volume /home/dns/etc/bind/db.gors.net:/etc/bind/db.gors.net --volume /home/dns/etc/bind/named.conf.local:/etc/ bind/named.conf.local --volume /var/cache bind --rm --net dmz_net --ip 172.16.123.129 --cap-add=NET_ADMIN dns_bind9
sudo docker run –d --volume /home/dns/etc/bind/db.gors.net:/etc/bind/db.gors.net --volume /home/dns/etc/bind/named.conf.local:/etc/ bind/named.conf.local --volume /var/cache bind --rm --net dmz_net --ip 172.16.123.129 --cap-add=NET_ADMIN dns_dmz dns_bind9
docker --help
sudo apt udpdate
sudo apt update
docker --help
sudo docker run –d --volume /home/dns/etc/bind/db.gors.net:/etc/bind/db.gors.net --volume /home/dns/etc/bind/named.conf.local:/etc/ bind/named.conf.local --volume /var/cache bind --rm --net dmz_net --ip 172.16.123.129 --cap-add=NET_ADMIN dns_dmz dns_bind9
docker run –d --volume /home/dns/etc/bind/db.gors.net:/etc/bind/db.gors.net --volume /home/dns/etc/bind/named.conf.local:/etc/ bind/named.conf.local --volume /var/cache bind --rm --net dmz_net --ip 172.16.123.129 --cap-add=NET_ADMIN dns_dmz dns_bind9
docker run --help
docker run –d --volume /home/dns/etc/bind/db.gors.net:/etc/bind/db.gors.net --volume /home/dns/etc/bind/named.conf.local:/etc/ bind/named.conf.local --rm --net dmz_net --ip 172.16.123.129 --cap-add=NET_ADMIN dns_dmz dns_bind9
docker run –d --volume /home/dns/etc/bind/db.gors.net:/etc/bind/db.gors.net --volume /home/dns/etc/bind/named.conf.local:/etc/ bind/named.conf.local --rm --net dmz_net --ip 172.16.123.129 --cap-add=NET_ADMIN dns_bind9
docker run --volume /home/dns/etc/bind/db.gors.net:/etc/bind/db.gors.net --volume /home/dns/etc/bind/named.conf.local:/etc/ bind/named.conf.local --rm --net dmz_net --ip 172.16.123.129 --cap-add=NET_ADMIN dns_bind9
docker run –d --volume /home/dns/etc/bind/db.gors.net:/etc/bind/db.gors.net --volume /home/dns/etc/bind/named.conf.local:/etc/bind/named.conf.local --rm --net dmz_net --ip 172.16.123.129 --cap-add=NET_ADMIN dns_dmz dns_bind9
docker run –d --volume /home/dns/etc/bind/db.gors.net:/etc/bind/db.gors.net --volume /home/dns/etc/bind/named.conf.local:/etc/bind/named.conf.local --rm --net dmz_net --ip 172.16.123.129 --cap-add=NET_ADMIN dns_bind9
docker run –d --volume /home/dns/etc/bind/db.gors.net:/etc/bind/db.gors.net --volume /home/dns/etc/bind/named.conf.local:/etc/bind/named.conf.local --rm --net dmz_net --ip 172.16.123.129 --cap-add=NET_ADMIN  --name dns_dmz dns_bind9
docker run –d --volume /home/dns/etc/bind/db.gors.net:/etc/bind/db.gors.net --volume /home/dns/etc/bind/named.conf.local:/etc/bind/named.conf.local --rm --net dmz_net --ip 172.16.123.129 --cap-add=NET_ADMIN --name dns_dmz dns_bind9
docker run --volume /home/dns/etc/bind/db.gors.net:/etc/bind/db.gors.net --volume /home/dns/etc/bind/named.conf.local:/etc/bind/named.conf.local --rm --net dmz_net --ip 172.16.123.129 --cap-add=NET_ADMIN --name dns_dmz dns_bind9
docker run --volume /home/dns/etc/bind/db.gors.net:/etc/bind/db.gors.net --volume /home/dns/etc/bind/named.conf.local:/etc/bind/named.conf.local -d --rm --net dmz_net --ip 172.16.123.129 --cap-add=NET_ADMIN --name dns_dmz dns_bind9
docker ps
docker ps -a
vim org1-dmz-nat.sh 
./clean.sh 
./org1-dmz-nat.sh 
docker ps
docker ps -a
cd /etc
ls
sudo apt-get install bind9
ls
cd bin
cd bind
ls
cd ~
apt-get install bind9 bind9utils bind9-dnsutils bind9-doc bind9-host -y
sduo apt-get install bind9 bind9utils bind9-dnsutils bind9-doc bind9-host -y
sudo apt-get install bind9 bind9utils bind9-dnsutils bind9-doc bind9-host -y
cd etc/bind
cd /etc/bind
ls
sudo apt-get update
sudo apt-get upgrade
sudo apt upgrade
sudo apt-get upgrade
sudo apt update
cd --
cd /etc/bind
ls
vim named.conf.local
sudo vim named.conf.local
sudo vim db.gors.net
cd ~
./clean.sh 
./org1-dmz-nat.sh 
vim org1-dmz-nat.sh 
./c
./clean.sh 
./org1-dmz-nat.sh 
sudo docker exec externalhost dig
sudo docker exec externalhost dig @172.16.123.129 ns.gors.net
sudo docker exec client dig @172.16.123.129 ns.gors.net
sudo docker exec client ping ns.gors.net
sudo docker exec client ping www.gors.net
sudo docker exec dns_dmz ping externalhost 
sudo docker exec dns_dmz ping 172.31.255.101
sudo docker exec client ping 172.31.255.101
sudo docker exec client ping 172.31.255.100
sudo docker exec dns_dmz ip r a default via 172.16.123.139
sudo docker exec dns_dmz ip r 
sudo docker exec dns_dmz ip r d default
sudo docker exec dns_dmz ip r a default via 172.16.123.139
sudo docker exec client ping 172.31.255.100
sudo docker exec dns_dmz ping 172.31.255.101
sudo docker exec externalhost dig www.gors.net
sudo docker exec externalhost dig 172.16.123.129
sudo docker exec externalhost dig @172.16.123.129 www.gors.net
sudo docker exec client dig @172.16.123.129 www.gors.net
sudo docker exec client dig @172.16.123.129 ns.gors.net
vim org1-dmz-nat.sh 
cd /etc/bin
cd /etc/bind
ls
cd /var/cache/
ls
cd bind/
ls
c ..
cd ..
ls
cd lib/
ls
cd bind/
ls
cd ´
cd ~
./clean.sh 
./org1-dmz-nat.sh 
vim org1-dmz-nat.sh 
docker exec dns_dmz ip r
docker exec dns_dmz ping 10.0.1.100
docker exec dns_dmz ping 10.0.2.100
docker exec dns_dmz ping 172.16.123.101
docker exec dns_dmz ping 172.16.123.100
docker exec client ping 172.16.123.100
docker exec client ping 172.16.123.101
docker exec client ping 172.31.255.101
docker exec dns_dmz ping 172.31.255.101
vim org1-dmz-nat.sh 
./clean.sh 
./org1-dmz-nat.sh 
docker exec dns_dmz ping 10.0.1.100
docker exec dns_dmz ping 10.0.2.100
docker exec dns_dmz ping 172.31.255.101
docker exec client ping ns.gors.net
docker exec client ping www.gors.net
docker exec client ping www.g.bet
docker exec client ping www.g.net
docker exec client ping www.name.net
docker exec client ping ns.gors.net
cd /etc/bind
ls
cat named.conf.local 
docker exec -it dns_dmz 
docker exec -it dns_dmz  bash
docker exec externalhostdig @172.16.1.10 www.atadomain.io
docker exec externalhost dig @172.16.1.10 www.atadomain.io
docker exec externalhost dig @172.16.123.129 www.atadomain.io
docker exec client dig @172.16.123.129 www.atadomain.io
docker exec client dig @172.16.123.129 www.gors.net
docker exec externalhost dig @172.16.123.129 www.gors.net
docker exec client dig @172.16.123.129 www.gors.net
ls
sudo vim db.gors.net 
cd ..
cd ~
./clean.sh 
./org1-dmz-nat.sh 
sudo docker exec externalhost dig
docker exec ecternhost  @172.16.123.129 ns.myorg.net
docker exec externalhost  @172.16.123.129 ns.myorg.net
docker exec externalhost @172.16.123.129 ns.myorg.net
docker exec externalhost dig @172.16.123.129 ns.myorg.net
docker exec client dig @172.16.123.129 ns.myorg.net
docker exec client dig @172.16.123.129 ns.gors.net
docker exec externalhost dig @172.16.123.129 ns.gors.net
sudo named-checkzone gors.net /etc/bind/db.gors.net
cd /etc/bind
ls
vim db.gors.net 
sudo named-checkzone gors.net /etc/bind/db.gors.net
docker ps
vim db.gors.net 
ping 10.0.1.100
ping 10.0.2.100
docker exec dns_dmz 
docker exec dns_dmz bash
docker exec -it dns_dmz bash
cd ~
./clean.sh 
./org1-dmz-nat.sh 
cd /etc/bin
cd /etc
cd bin
cd bind
ls
vim db.gors.net 
docker ps
systemctl
docker exec -it squid_proxy bash
systemctl status squid
docker exec -it squid_proxy bash
docker ps
docker exec -it squid_proxy bash
clear
sudo docker exec -it client /usr/bin/curl -x
clear
sudo docker exec -it client /usr/bin/curl http://10.0.2.100/
sudo docker exec -it client /usr/bin/curl -x 10.0.1.253:3128 http://10.0.2.101/
sudo docker exec -it client curl -x 10.0.1.253:3128 http://10.0.2.101/
sudo docker exec -it client curl -x 10.0.1.253:3128 https://10.0.2.101/
sudo docker exec -it client curl -x 10.0.1.253:3128 https://10.0.2.100/

cd squid_proxy/
ls
vim test.sh
chmod a+x test.sh 
./test.sh 
vim cache.sh
chmod a+x cache.sh 
./cache.sh 
vim cache.sh
./cache.sh 
sudo docker exec router /bin/bash -c
'iptables -t filter -A FORWARD -p tcp --
sudo docker exec router /bin/bash -c 'iptables -t filter -A FORWARD -p tcp -- dport 80 ! -s 10.0.1.253 -j DROP’
exit
sudo docker exec router /bin/bash -c 'iptables -t filter -A FORWARD -p tcp -- dport 80 ! -s 10.0.1.253 -j DROP’
sudo docker exec router -it /bin/bash -c 'iptables -t filter -A FORWARD -p tcp -- dport 80 ! -s 10.0.1.253 -j DROP’
sudo docker exec router -it /bin/bash iptables -t filter -A FORWARD -p tcp -- dport 80 ! -s 10.0.1.253 -j DROP
sudo docker exec -it router /bin/bash -c 'iptables -t filter -A FORWARD -p tcp -- dport 80 ! -s 10.0.1.253 -j DROP’
cd ~
cat org1-dmz-nat.sh 
sudo docker exec router /bin/bash -c 'iptables -t filter -A FORWARD -p tcp -- dport 80 ! -s 10.0.1.253 -j DROP'
docker exec -it router bash
cd router/
ls
vim Dockerfile 
cd ..

docker image ls
docker build ~/router
./org1-dmz-nat.sh 
docker exec -it  router bash
sudo docker exec router /bin/bash -c 'iptables -t filter -A FORWARD -p tcp -- dport 80 ! -s 10.0.1.253 -j DROP'
docker exec -it router bash
cd squid_proxy/
./test.sh 
./cache.sh 
vim cache.sh
vim cache_test.sh
rm cache.sh
ls
chmod a+x cache_test.sh 
ls
cd ..
sudo docker exec -it client /usr/bin/curl
sudo docker exec -it client /usr/bin/curl http://10.0.2.100/
sudo docker exec -it client /usr/bin/curl http://10.0.2.101/
ping 10.0.2.100
ping 10.0.2.101
sudo docker exec -it client curl http://10.0.2.100/
sudo docker exec -it client curl -x 10.0.1.253:3128 http://10.0.2.100/
cd squid_proxy/
ls
vim test_2.sh
vim test
ls
vim test.sh 
vim test_2.sh 
chmod a+x test_2.sh 
./test_2.sh 
vim test_2.sh 
./test_2.sh 
vim test_2.sh 
kill
./test_2.sh 
vim test_2.sh 
./test_2.sh 
vim test_2.sh 
docker exec -it client kill
docker exec -it client kill pid
docker exec -it client kill 
clear
docker ps
docker exec -it dns_dmz bash
cd squid_proxy/
ls
./test_2.sh 
vim test_2.sh 
vim test_2_no_proxy.sh 
vim test_2.sh 
./test_2.sh 
vim test_2_proxy.sh 
vim test_2.sh 
vim test_2_proxy.sh 
chmod a+x *
./test_2_no_proxy.sh 
./test_2_proxy.sh 
rm test_2.sh 
ls
vim test_2_proxy.sh 
vim test_2_no_proxy.sh 
./test_2_no_proxy.sh 
vim test_2_no_proxy.sh 
./test_2_no_proxy.sh 
vim test_2_no_proxy.sh 
./test_2_no_proxy.sh 
vim test_2_no_proxy.sh 
exit
vim test_2_no_proxy.sh 
ls
rm test_2_no_proxy.sh 
cd squid_proxy/
ls
vim test_2_no_proxy.sh 
./test_2_no_proxy.sh 
./test_2_proxy.sh 
cd ..
cd dns
ls
cat dns.sh 
sudo docker exec externalhost dig
sudo docker exec externalhost dig@172.16.123.129 ns.myorg.net
sudo docker exec -it externalhost dig@172.16.123.129 ns.gors.net
sudo docker exec externalhost dig@172.16.123.129 ns.gors.net
sudo docker exec -it externalhost 
sudo docker exec -it externalhost dig@172.16.123.129 ns.gors.net
sudo docker exec -it externalhost -c 'dig@172.16.123.129 ns.gors.net'
cd ..
sudo docker exec -it externalhost -c 'dig@172.16.123.129 ns.gors.net'
docker ps
sudo docker exec /bin/bash  externalhost -c 'dig@172.16.123.129 ns.gors.net'
sudo docker exec externalhost -c 'dig@172.16.123.129 ns.gors.net'
sudo docker exec externalhost 'dig@172.16.123.129 ns.gors.net'
exit
docker exec externalhost ip r
docker exec externalhost dig@192.16.123.129
docker exec externalhost dig @192.16.123.129
docker exec externalhost dig @192.16.123.129 ns.gors.net
docker exec externalhost dig@192.16.123.129 ns.gors.net
docker exec -it externalhost bash
docker exec externalhost dig@172.16.123.129 ns.gors.net
docker exec externalhost dig @172.16.123.129 ns.gors.net
docker exec -it dns_dmz bash
docker exec externalhost dig @172.16.123.129 www.google.com
docker exec externalhost dig @8.8.8.8 www.google.com
docker exec -it dns_dmz bash
service bind9
docker exec -it dns_dmz bash
host
host localhot
host localhost
docker exec -it dns_dmz bash
ping 8.8.8.8
ls
chmod a+x *
sudo chmod a+x *
docker exec externalhost ping 8.8.8.8
docker exec public_server ping 8.8.8.8
docker exec client ping 8.8.8.8
./clean.sh 
./org1-dmz-nat.sh 
docker exec -it externalhost bash
docker exec -it externalhost 
docker exec -it edgerouter bash
docker exec client ping externalhost 
docker exec client ping 172.31.255.100
docker exec client ping 172.31.255.101
docker exec externalhost ping 10.0.1.100
docker exec externalhost ping 10.0.1.101
docker exec client ip a
docker exec externalhost ping 10.0.1.100
docker exec -it edgerouter bash
ip r
sudo iptables -t nat -A POSTROUTING -s 172.16.128/28 -o eth4 -j MASQUERADE
sudo ip route add 172.16.123.128/28 via 172.31.255.253
sudo ip l set ens21 up
sudo docker network
sudo docker network ls
sudo docker network create -d macvlan --subnet=172.16.123.128/28 --gateway=172.16.123.140 -o parent=ens21 dmz_net
docker exec -it externalhost bash
docker exec client ping 1.1.1.1
docker exec client ping 10.0.2.100
docker exec client ping 172.16.123.139
docker exec client ping 172.31.255.100
docker exec client ping 172.31.255.101
docker exec externalhost ping 172.16.123.142
docker exec externalhost ping 10.0.1.100
docker exec -it router bash
sudo docker network disconnect public_net router
sudo docker network connect dmz_net router --ip 172.16.123.142
docker exec -it edgerouter bash
docker exec externalhost ping 10.0.1.100
ls
docker exec public_server ping 10.0.1.100
docker exec public_server ping 172.31.255.100
docker exec public_server ping 172.31.255.101
docker exec dns_dmz ping 172.31.255.101
docker exec dns_dmz ping 10.0.1.100
docker exec dns_dmz ping 10.0.2.100
docker exec dns_dmz ping 172.16.123.129
host gors.net
host gor.net
docker exec dns_dmz host gors.net
docker exec dns_dmz host go.net
docker exec -it dns_dmz bash
sudo docker exec externalhost dig @192.16.123.129 ns.gors.net

sudo docker exec externalhost ip r
docker exec dns_dmz ping 172.16.123.129
docker exec dns_dmz ping 172.31.255.100
docker exec dns_dmz ping 172.31.255.101
sudo docker exec externalhost ping 172.16.123.129
docker exec public_server ip a
sudo docker exec externalhost ping 172.16.123.130
sudo docker exec client dig @192.16.123.129 ns.gors.net
sudo docker exec client dig @192.16.123.129 gors.net
sudo docker exec client dig @192.16.123.129 google.com
sudo docker exec -it client bash
./clean.sh 
./org1-dmz-nat.sh 
docker exec externalhost ping 10.0.2.100
docker exec externalhost ping 10.0.1.100
docker exec externalhost ping 172.16.123.129
docker exec dns_dmz ping 172.16.255.101
docker exec dns_dmz ping 172.16.255.10'
docker exec dns_dmz ping 172.16.255.100
docker exec client ping 172.16.255.100
docker exec client ping 172.16.255.101
docker exec dns_dmz ping 172.31.255.100
docker exec dns_dmz ping 172.31.255.101
docker exec public_server ping 172.31.255.101
docker exec externalhost ping 172.16.123.100
docker exec externalhost ping 172.16.123.142
docker exec public_server ping 172.16.123.142
docker exec public_server ping 172.31.255.253
docker exec public_server ping 172.31.255.101
cd /etc/bind/
ls
cat db.gors.net 
host ns.gors.net
host gors.net
ping 86.105.245.69
host ns.gors.net
docker exec client dig @192.16.123.129
docker exec client ping 192.16.123.129
docker exec client dig @192.16.123.129 ns.gors.net
docker exec client ping 192.16.123.129
docker exec externalhost ping 192.16.123.129
docker exec client dig @192.16.123.129 ns.gors.net
docker exec -it dns_dmz bash
./cl
cd ../..
ls
cd home/
ls
cd dns/
ls
cd etc/
ls
cd bind/
ls
cat db.gors.net/
cd db.gors.net/
ls
cd ..
ls
cd ..
ls
cd ..
ls
cd ..
ls
cd theuser/
ls
cd ..
cd gors/
ls
cd etcbind/
ls
cd ..
ls
cd etcsquid/
ls
cd ..
ls
cd quagga/
ls
cd ..
ls
cd ..
cd theuser/
ls
./clean.sh 
./org1-dmz-nat.sh 
docker exec -it dns_dmz bash
docker exec externalhost ping 192.16.123.129
docker exec externalhost ping 192.16.123.130
docker exec externalhost ping 192.16.123.142
docker exec externalhost dig1@72.16.123.129
docker exec externalhost dig @192.16.123.142
docker exec externalhost dig @172.16.123.142
docker exec externalhost dig @172.16.123.129
docker exec externalhost dig @172.16.123.129 ns.gors.net
docker exec client dig @172.16.123.129 ns.gors.net
docker exec -it dns_dmz bash
docker exec client dig @172.16.123.129 localhost
docker exec -it dns_dmz bash
cd ..
ls
cd gors/
ls
c etcbind/
ls
cd etcbind/
ls
cd ..
cd theuser/
cd ~
ls
cd zabbix_code/
ls
cat build.
cat build.sh 
cd ..
cd zabbix
ls
cd ..
l
ls
cat docker-prune.sh 
ls
docker exec -it dns_dmz bash
docker exec externalhost ping 192.16.123.142
docker exec externalhost ping 172.16.123.129
docker exec externalhost ping 1.1.1.1
docker exec dns_dmz ping 1.1.1.1
docker exec public_server ping 1.1.1.1
docker exec client ping 1.1.1.1
docker exec public_server ping 1.1.1.1
docker exec public_server ping 172.16.123.129
docker exec public_server ping 172.16.123.139
docker exec public_server ping 1.1.1.1
docker exec -it public_server bash
ping 1.1.1.1
docker exec client ping 1.1.1.1
docker exec server ping 1.1.1.1
docker exec externalhost ping 1.1.1.1
docker exec router ping 1.1.1.1
docker exec router ping 172.16.123.129
docker exec router ping 172.16.123.130
docker exec router ping 172.16.123.142
docker exec -it router bash
docker exec -it edgerouter bash
docker exec router ping 172.16.123.142
docker exec router ping 1.1.1.1
docker exec externalhost ping 1.1.1.1
docker exec edgerouter ping 1.1.1.1
docker exec public_server ping 1.1.1.1
docker network ls
docker network dmz_net
docker network inspect dmz_net
docker network dmz_net
cat org1-dmz-nat.sh 
vim org1-dmz-nat.sh 
./clean.sh 
./org1-dmz-nat.sh 
./clean.sh 
vim org1-dmz-nat.sh 
./clean.sh 
./org1-dmz-nat.sh 
./clean.sh 
vim org1-dmz-nat.sh 
./org1-dmz-nat.sh 
vim org1-dmz-nat.sh 
./clean.sh 
./org1-dmz-nat.sh 
docker exec public_server ping 1.1.1.1
docker exec public_server ping 172.31.255.101
docker exec public_server ping 172.31.255.254
docker exec public_server ping 8.8.8.8
docker exec -it public_server bash
docker exec -it client bash
ip r
ip a
sudo ip route add 172.16.123.128/28 via 172.31.255.253
sudo iptables -t nat -A POSTROUTING -s 172.16.123.128/28 -o
sudo iptables -t nat -A POSTROUTING -s 172.16.123.128/28 -o eth4 -j MASQUERADE
docker exec public_server ping 8.8.8.8
ip a
ip link
sudo ip l set ens21 up
ip l
sudo docker network create -d macvlan --subnet=172.16.123.128/28 --gateway=172.16.123.140 -o parent=ens21 dmz_net
ls
docker exec dns_dmz ping 8.8.8.8
docker exec edgerouter ping 8.8.8.8
docker exec router ping 8.8.8.8
docker network ls
sudo docker network disconnect public_net router
cat org1-dmz-nat.sh 
docker exec dns_dmz ping 10.0.1.100
docker exec squid_proxy ping 10.0.1.100
docker exec squid_proxy ping 1.1.1.1
docker exec dns_dmz ping 172.16.123.142
docker exec dns_dmz ping 10.0.2.100
docker exec dns_dmz ping 10.0.1.253
docker exec dns_dmz ping 172.31.255.254
docker exec dns_dmz ping 1.1.1.1
docker network 
docker network inspect public_net 
ping 172.31.255.254
docker exec -it edgerouter bash
sudo iptables
sudo iptables -h
sudo iptables ls
sudo iptables -A
sudo iptables -t
sudo iptables -h
sudo iptables -list
sudo iptables --list
sudo iptables -t nat -A POSTROUTING -s 172.16.123.128/28 -o
ip r
ip r d 172.16.123.128
sudo ip r d 172.16.123.128
sudo ip r d 172.16.123.128/28
sudo ip r a 172.16.123.128/28 via 172.31.255.253
docker exec squid_proxy ping 1.1.1.1
docker exec dns_dmz ping 1.1.1.1
ip r d 172.16.123.128/28
sudo ip r d 172.16.123.128/28
sudo ip r a 172.16.123.128/28 via 172.31.255.254
docker exec dns_dmz ping 1.1.1.1
sudo iptables -t nat -A POSTROUTING -s 172.16.123.128/28 -o eth4 -j MASQUERADE
docker exec dns_dmz ping 1.1.1.1
docker exec dns_dmz ping 8.8.8.
docker exec dns_dmz ping 8.8.8.8
clear
docker ps
docker exec dns_dmz ping 8.8.8.8
docker exec client ping 8.8.8.8
docker exec server ping 8.8.8.8
clear
tcpdump
sudo tcpdump
clear
docker exec dns_dmz ping 8.8.8.8
ip r
ip r d 172.16.123.128/28
sudo ip r d 172.16.123.128/28
sudo ip r a 172.16.123.128/28 via 172.31.255.253
docker exec dns_dmz ping 8.8.8.8
cat org1-dmz-nat.sh 
vim org1-dmz-nat.sh 
clear
docker exec edgerouter tcpdump 
clear
docker exec edgerouter tcpdump 
docker exec edgerouter ip r
docker exec edgerouter ip r a 172.16.123.128/28 via 172.16.123.139
docker exec -it edgerouter bash
docker exec -it externalhost bash
docker exec -it edgerouter bash
docker exec -it externalhost bash
docker exec externalhost ping 10.0.1.100
docker exec externalhost ip a
docker exec externalhost ping 192.168.53.99
docker exec router ip a
docker exec externalhost ping 192.168.53.98
docker exec externalhost ping 1.1.1.1
docker exec externalhost ping 192.168.53.5
docker exec externalhost ping 192.168.53.192
docker exec externalhost ping 192.168.53.97
docker exec externalhost ping 192.168.53.95
docker exec externalhost ping 192.168.53.99
docker exec router ip r a 192.168.53.95
docker exec externalhost ping 10.0.1.100
docker exec externalhost ping 10.0.0.2
docker exec externalhost ping 10.0.1.100
docker exec externalhost ping 10.0.2.100
docker exec externalhost ping 10.0.2.101
docker exec externalhost ping 10.0.1.100
docker exec externalhost ping 10.0.2.100
docker exec externalhost ping 10.0.2.101
docker exec externalhost ping 10.0.2.100
docker exec externalhost ping 10.0.1.100
docker exec externalhost ping 10.0.1.253
mkdir simpleVPN
cd simpleVPN/
docker exec externalhost ping 10.0.1.253
docker exec externalhost ping 10.0.2.100
docker exec externalhost ping 10.0.1.100
ls
docker exec externalhost ping 10.0.2.100
docker exec externalhost ping 10.0.1.100
vim tun_client.py
vim tun_server.py
ls
vim setup.sh
cd ..
vim org1-dmz-nat.sh 
./clean.sh 
sudo docker run -d --rm --volume /home/theuser/simpleVPN/tun_client.py:/home/tun_client.py  --net public_net --ip 172.31.255.101 --cap-add=NET_ADMIN --name externalhost netubuntu
clear
cd simpleVPN/
vim run_VPN_client.sh
chmod a+x *
./run_VPN_client.sh 10.0.1.0/24
vim run_VPN_client.sh
docker exec -it externalhost bash
clear
vim run_VPN_client.sh
./run_VPN_client.sh 10.0.1.0/24
vim run_VPN_client.sh
./run_VPN_client.sh
vim run_VPN_client.sh
./run_VPN_client.sh
vim run_VPN_client.sh
./run_VPN_client.sh
vim run_VPN_client.sh
./run_VPN_client.sh
vim run_VPN_client.sh
./run_VPN_client.sh
vim run_VPN_client.sh
./run_VPN_client.sh
vim run_VPN_client.sh
./run_VPN_client.sh
vim run_VPN_client.sh
./run_VPN_client.sh
vim run_VPN_client.sh
./run_VPN_client.sh
vim run_VPN_client.sh
vim tun_client.py 
cd ..
./clean.sh 
./org1-dmz-nat.sh 
cd simpleVPN/
./setup.sh 
./run_VPN_client.sh
vim tun_client.py 
cd ..
./clean.sh 
./org1-dmz-nat.sh 
cd simpleVPN/
./setup.sh 
./run_VPN_client.sh
clear
cd simpleVPN/
docker exec externalhost ping 10.0.1.100
vim tun_server.py 
vim tun_client.py 
ls
docker exec externalhost ping 10.0.1.100
docker exec externalhost ping 10.0.1.253
docker exec externalhost ping 10.0.2.100
docker exec externalhost ping 10.0.1.253
docker exec externalhost curl http://10.0.1.253
docker exec externalhost ping 10.0.1.253
docker exec externalhost ping 10.0.2.100
docker exec externalhost curl http://10.0.2.100
docker exec externalhost ping 10.0.2.100
docker exec externalhost curl http://10.0.2.100
docker exec externalhost ping 10.0.1.253
docker exec externalhost curl http://10.0.2.100
docker ps
docker ps -a
vim org1-dmz-nat.sh 
./clean.sh 
./org1-dmz-nat.sh 
docker exec -it externalhost bash
vim org1-dmz-nat.sh 
./clean.sh 
sudo docker run -d --volume /home/theuser/simpleVPN/tun_server.py:/home/tun_server.py --net client_net --ip 10.0.1.254 --cap-add=NET_ADMIN --name router netubuntu
./clean.sh 
vim org1-dmz-nat.sh 
./org1-dmz-nat.sh 
ls
cd simpleVPN/
ls
./setup.sh
sudo ./setup.sh
chmod a+x *
./setup.sh
vim setup.sh 
./setup.sh
vim setup.sh 
docker exec router mkdir -p /dev/net/tun
vim setup.sh 
./setup.sh
vim setup.sh 
./setup.sh
docker exec externalhost python3
docker exec -it externalhost bash
docker exec -it router bash
vim setup.sh 
./setup.sh
cd ..
vim org1-dmz-nat.sh 
./clean.sh 
./org1-dmz-nat.sh 
cd simpleVPN/
./setup.sh 
vim setup.sh 
./setup.sh 
vim setup.sh 
./setup.sh 
vim setup.sh 
./setup.sh 
docker exec -it externalhost bash
docker exec -it router bash
ls
vim run_VPN_server.sh
ls
chmod a+x *
./run_VPN_server.sh 
vim run_VPN_server.sh
./run_VPN_server.sh 
vim stop_VPN.sh
chmod a+x *
./stop_VPN.sh 
ls
./run_VPN_server.sh 
./run_VPN_seclient.sh
./run_VPN_client.sh 
vim run_VPN_client.sh 
./stop_VPN.sh 
./run_VPN_server.sh 
vim run_VPN_server.sh 
./run_VPN_server.sh 
vim run_VPN_server.sh 
./run_VPN_server.sh 
vim run_VPN_server.sh 
./run_VPN_server.sh 
vim run_VPN_server.sh 
./run_VPN_server.sh 
vim run_VPN_server.sh 
./run_VPN_server.sh 
vim run_VPN_server.sh 
./run_VPN_server.sh 
./stop_VPN.sh 
./run_VPN_server.sh 
./stop_VPN.sh 
vim run_VPN_server.sh 
./run_VPN_server.sh 
./stop_VPN.sh 
vim run_VPN_server.sh 
./run_VPN_server.sh 
vim run_VPN_server.sh 
./run_VPN_server.sh 
./run_VPN_client.sh 
./stop_VPN.sh 
./run_VPN_server.sh 
./run_VPN_client.sh 
./run_VPN_server.sh 
./run_VPN_client.sh 
./stop_VPN.sh 
./run_VPN_server.sh 
./run_VPN_client.sh 
./stop_VPN.sh 
vim run_VPN_client.sh 
./stop_VPN.sh 
./run_VPN_server.sh 
vim run_VPN_client.sh 
./run_VPN_client.sh 
./stop_VPN.sh 
vim tun_client.py 
cd ..
./clean.sh 
./org1-dmz-nat.sh 
cd simpleVPN/
./run_VPN_server.sh 
./setup.sh 
./run_VPN_server.sh 
ls
./run_VPN_client.sh 
./stop_VPN.sh 
vim run_VPN_client.sh 
./run_VPN_server.sh 
./run_VPN_client.sh 
./stop_VPN.sh 
./run_VPN_server.sh 
./run_VPN_client.sh 
./stop_VPN.sh 
./run_VPN_server.sh 
./run_VPN_client.sh 
./stop_VPN.sh 
vim run_VPN_server.sh 
./run_VPN_server.sh 
./run_VPN_client.sh 
clear
./stop_VPN.sh 
ls
cd ..
ls
git
clear
ls
git remote add ruben https://github.com/RD22/GORS
git init
git remote add ruben https://github.com/RD22/GORS
git pull ruben main
git status
ls
git add tests/ simpleVPN/ squid_proxy/ server/ router/ internet_access.sh clean.sh org1-dmz-nat.sh baseimage/ 
git status
git add docker-prune.sh 
git commit -m "files that work (kinda)"
git push ruben main
git push ruben
git push --set-upstream ruben main
git checkout
git checkout main
git push --set-upstream ruben main
docker image ls
cat org1-dmz-nat.sh 
./clean.sh 
./org1-dmz-nat.sh 
cd dns/
ls
./dns.sh 
docker ps
cd ..
./clean.sh 
./org1-dmz-nat.sh 
ls
docker ps
docker exec client curl http://172.16.123.130
docker exec externalhost curl http://172.16.123.130
docker ps
docker exec externalhost curl http://172.16.123.130
docker exec externalhost wget http://172.16.123.130
docker exec externalhost curl http://172.16.123.130
docker exec externalhost wget -c http://172.16.123.130
docker exec -it externalhost bash
cd dns/
vim dns.sh 
./dns.sh 
vim dns.sh 
./dns.sh 
vim dns.sh 
./dns.sh 
vim dns.sh 
cd /var/lib/
çs
ls
cd bind/
ls
vim dns.sh 
ls
cd ~/dns/
vim dns.sh 
sudo docker run -d         --name= dns_bind9         --volume /home/gors/etcbind:/etc/bind         --volume /var/cache/bind         --volume /var/lib/bind         --rm --net dmz_net --ip 172.16.123.129  --cap-add=NET_ADMIN         dns_dmz
sudo docker run -d         --name= dns_bind9   _net --ip 172.16.123.129  --cap-add=NET_ADMIN         dns_dmz
sudo docker run -d _net --ip 172.16.123.129  --cap-add=NET_ADMIN dns_dmz --name= dns_bind9 dns_dmz
sudo docker run -d --net --ip 172.16.123.129  --cap-add=NET_ADMIN dns_dmz --name= dns_bind9 dns_dmz
sudo docker run -d --ip 172.16.123.129  --cap-add=NET_ADMIN dns_dmz --name= dns_bind9 dns_dmz
sudo docker run -d --ip 172.16.123.129  --cap-add=NET_ADMIN --name= dns_bind9 dns_dmz
sudo docker run -d --ip 172.16.123.129  --cap-add=NET_ADMIN --name= dns_bind9 ~/dns/dns_dmz
sudo docker run -d --ip 172.16.123.129  --cap-add=NET_ADMIN --name= dns_bind9 dns_dmz
docker ps
cd ..
sudo docker run -d         --name= dns_bind9         --volume /home/gors/etcbind:/etc/bind         --volume /var/cache/bind         --volume /var/lib/bind         --rm --net dmz_net --ip 172.16.123.129  --cap-add=NET_ADMIN         dns_dmz
docker run -d --ip 172.16.123.129  --cap-add=NET_ADMIN --name= dns_bind9 ^Cs_dmz
docker run -d --ip 172.16.123.129  --cap-add=NET_ADMIN --name= dns_dmz dns_bin9
docker run -d --ip 172.16.123.129  --cap-add=NET_ADMIN --name= dns_dmz dns_bind9
docker run -d --ip 172.16.123.129  --cap-add=NET_ADMIN --name dns_dmz dns_bind9
cd dns/
vim dns.sh 
cd ..
./clean.sh 
./org1-dmz-nat.sh 
cd dns/
./dns.sh 
./org1-dmz-nat.sh 
vim dns.sh 
./dns.sh 
vim dns.sh 
./dns.sh 
vim dns.sh 
./dns.sh 
vim dns.sh 
cd ..
./clean.sh 
cd dns/
./dns.sh 
docker ps
vim dns.sh 
cd ..
./clean.sh 
./org1-dmz-nat.sh 
cd c
cd dns/
./dns.sh 
vim dns.sh 
cd ..
./clean.sh 
./org1-dmz-nat.sh 
cd dns/
./dns.sh 
docker ps
docker exec -it dns_dmz bash
docker exec client dig @172.16.123.129 www.internal.myorg.net
docker exec client ping 172.16.123.129
cd ..
./clean.sh 
vim org1-dmz-nat.sh 
./org1-dmz-nat.sh 
docker ps
./clean.sh 
docker ps
docker ps -
docker ps -a
vim org1-dmz-nat.sh 
./org1-dmz-nat.sh 
vim org1-dmz-nat.sh 
./clean.sh 
./org1-dmz-nat.sh 
vim org1-dmz-nat.sh 
docker ps
vim org1-dmz-nat.sh 
./clean.sh 
./org1-dmz-nat.sh 
docker ps
docker exec dns_dmz ping 1.1.1.1
docker exec client ping 172.16.123.129
docker exec client ping 172.16.123.130
cd pr
cd squid_proxy/
ks
ls
./cache_test.sh 
cd ..
ls
cd dns/
cd ..
cd quagga/
ls
cd ..
ls
docker ps
docker exec -it client bash
docker exec -it externalhost bash
clear
vim org1-dmz-nat.sh 
./clean.sh 
docker network ls
./org1-dmz-nat.sh 
ip r
docker exec client ping 172.16.123.141
docker exec client ping 172.31.255.254
docker exec public_server ping 172.31.255.254
docker exec public_server ping 1.1.1.1
docker exec public_server ping 8.8.8.8
docker exec dns_dmz ping 8.8.8.8
docker exec dns_dmz pi
docker exec dns_dmz ping
docker exec dns_dmz ping 1.1.1.1
docker exec router ping 1.1.1.1
docker exec edgerouter ping 1.1.1.1
docker exec router ping 1.1.1.1
docker exec router pi r
docker exec router ip r
docker exec router ping 10.0.1.100
docker exec router ping 172.31.255.254
docker exec router ping 172.31.255.253
docker exec router ping 172.31.255.101
ip r
ip r a 172.16.123.128/28 via 192.168.88.101
sudo ip r a 172.16.123.128/28 via 192.168.88.101
ping 1.1.1.1
ip r d default
sudo ip r d default
ping 1.1.1.1
sudo ip r a default via 192.168.88.101
ping 1.1.1.1
sudo ip r d default
sudo ip r a default via 192.168.88.100
ping 1.1.1.1
ls
cat internet_access.sh 
ip r
ip a
ip r
sud ip l set eth4
sudo ip l set eth4
sudo iptables -t nat -A POSTROUTING -s 172.16.123.128/28 -o eth0 -j MASQUERADE
docker exec router ping 1.1.1.1
docker exec externalhost ping 1.1.1.1
docker exec router ping 1.1.1.1
ip r
ip r d 172.16.123.128/28
sudo ip r d 172.16.123.128/28
sudo ip r a 172.16.123.128/28 via 172.31.255.253
docker exec router ping 1.1.1.1
docker exec externalhost ping 1.1.1.1
docker exec public_server ping 1.1.1.1
./clean.sh 
ip link
vim org1-dmz-nat.sh 
./org1-dmz-nat.sh 
./clean.sh 
vim org1-dmz-nat.sh 
./org1-dmz-nat.sh 
docker exec public_server ping 1.1.1.1
docker exec externalhost ping 1.1.1.1
docker exec router ping 1.1.1.1
vim org1-dmz-nat.sh 
./clean.sh 
./org1-dmz-nat.sh 
docker exec externalhost ping 1.1.1.1
docker exec router ping 1.1.1.1
vim org1-dmz-nat.sh 
./clean.sh 
./org1-dmz-nat.sh 
docker exec externalhost ping 1.1.1.1
docker exec router ping 1.1.1.1
docker exec dns_dmz ping 1.1.1.1
docker exec externalhost ping 10.0.1.100
docker exec client ping 1.1.1.1
docker exec public_server ping 1.1.1.1
./clean.sh 
vim org1-dmz-nat.sh 
./clean.sh 
./org1-dmz-nat.sh 
docker exec public_server ping 1.1.1.1
docker exec dns_dmz ping 1.1.1.1
docker exec router ping 1.1.1.1
vim org1-dmz-nat.sh 
docker exec client ping 1.1.1.1
docker exec client ping 10.0.2.100
docker exec client ping 172.16.123.139
docker exec client ping 172.31.255.100
docker exec client ping 172.31.255.101
docker exec externalhost ip a
docker exec externalhost ping 172.16.123.142
docker exec externalhost ping 10.0.1.10
docker exec externalhost ping 10.0.1.100
docker exec externalhost dig @172.16.123.129 ns.gors.net
docker exec externalhost ping 172.16.123.129
docker exec dns_dmz ping 172.31.255.253
docker exec dns_dmz ping 172.31.255.254
docker exec dns_dmz ping 172.31.255.101
docker exec dns_dmz ping 1.1.1.1
docker exec dns_dmz ping 8.8.8.8
docker exec public_server ping 8.8.8.8
docker exec public_server ping 172.31.255.101
docker exec public_server ping 172.31.255.253
docker exec public_server ping 
docker exec public_server ping 172.31.255.142
docker exec client ping 172.16.123.129
docker exec client ip r
docker exec router ip r
docker exec router ping 1.1.1.1
docker exec router ping 172.16.123.129
docker exec externalhost ping 172.16.123.129
docker exec externalhost ping 172.16.123.130
docker exec server ping 172.16.123.130
docker exec server ping 172.16.123.129
docker exec client ping 172.16.123.130
docker exec router ping 172.16.123.130
docker exec public_server ping 1.1.1.1
vim org1-dmz-nat.sh 
./clean.sh 
./org1-dmz-nat.sh 
docker exec public_server ping 1.1.1.1
docker exec dns_dmz ping 1.1.1.1
docker exec dns_dmz ping 10.0.1.100
docker exec client ping 172.16.123.129
docker exec s ping 172.16.123.129
docker exec server ping 172.16.123.129
docker exec router ping 172.16.123.129
docker exec edgerouter ping 172.16.123.129
docker exec externalhost ping 172.16.123.129
docker exec squid_proxy ping 172.16.123.129
docker exec squid_proxy ping 1.1.1.1
docker exec squid_proxy ping 172.31.255.254
ls
mkdir tests
cd tests/
vim client.sh
docker exec squid_proxy ip a
vim client.sh
chmod a+x client.sh 
./client.sh 
vim client.sh
./client.sh 
vim client.sh
./client.sh 
ls
cd ..
ls
docker exec dns_dmz ping 1.1.1.1
docker exec dns_dmz ping 10.0.1.110
docker exec dns_dmz ping 10.0.1.100
docker exec -it dns_dmz bash
docker ps
docker exec -it dns_dmz bash
ls
cd dns/
çs
ls
cat Dockerfile 
cat dns.sh 
chmod a+x *
ls
./dns.sh 
cat dns.sh 
vim dns.sh 
cd ..
./clean.sh 
./org1-dmz-nat.sh 
cd dns/
./dns.sh 
cd ..
vim org1-dmz-nat.sh 
./clean.sh 
./org1-dmz-nat.sh 
docker exec public_server ping 1.1.1.1
cd dns/
./dns.sh 
vim dns.sh 
cd ..
./clean.sh 
./org1-dmz-nat.sh 
cd dns/
./dns.sh 
vim dns.sh 
cd .
cd ..
cat org1-dmz-nat.sh 
docker exec -it router bash
git status
git push ruben main
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
git config --global credential.helper cache
git config --global credential.helper store
git push ruben main
git pull ruben main 
git checkout 
git rm -rf .git
ls
exit
ls
cd ..
ls
cd theuser/
ls
cd dns/
ls
cd ..
git reflog
git reset --hard <commit hash>
git reset --hard HEAD@{1}
ls
docker ps
git status
git add
ls
git add .bash_history 
git commit -m "pls"
git push ruben main
ls
ls -sal
git add -A
sudo git add -A
ls
git rm --cached zabbix_code/
git rm --cached -f zabbix_code/
ls
git add -A
git rm --cached -f zabbix_code/
ls zabbix_code/
ls -sal
rm -rf .git
sudo rm -rf .git
cd ..
ls
cd theuser/
ls
git add -A
ls
git init
ls
git remote -v
git remote add RD22 https://github.com/RD22/GORS
git branch main
git status
git add -A
sudo git add -A
git rm --cached zabbix_code/
git rm -f --cached zabbix_code/
git status
git commit -m "pls work"
sudo git commit -m "pls work"
ls
sudo git push RD22 main
sudo git push RD22
git checkout
ls
git branch main
sudo git branch main
git branch
sudo git push RD22
git checkout
git checkout main
sudo git checkout main
ls
sudo git push --upstream main RD22
sudo git push RD22
sudo git push --set upstream RD22 main
sudo git push --set-upstream RD22 main
ls
sudo git push --set-upstream RD22 main
sudo git push RD22 main
git config --global credential.helper cache
git config --global credential.helper store
sudo git push --set-upstream RD22 main
ls
sudo git push --set-upstream RD22 main
sudo git config --global credential.helper cache
ls
exit
ls
git status 
git status push
git push
git push RD22 
git push --set-upstream RD22 main 
sudo git push --set-upstream RD22 main 
exit
ls
git status
cat .git-credentials 
git push RD22 
git push --set-upstream RD22 main 
git remote -v
git push --set-upstream RD22 main 
ls
docker ps
cd simpleVPN/
ls
cd ..
ls
exit
clear
ls
./clean.sh 
vim org1-dmz-nat.sh 
./org1-dmz-nat.sh 
sudo docker run –d --name=bind9_myorg_auth --
volume
/home/gors/dns/etcbind/db.myorg.net:/etc/bind
/db.myorg.net --volume
/home/gors/dns/etcbind/named.conf.local:/etc/
bind/ named.conf.local --volume
/var/cache/bind --volume /var/lib/bind \ --
volume --rm --net dmz_net --ip 172.16.123.129
--cap-add=NET_ADMIN
clear
sudo docker run –d --name=bind9_myorg_auth --volume /home/gors/dns/etcbind/db.myorg.net:/etc/bind/db.myorg.net --volume /home/gors/dns etcbind/named.conf.local:/etc/bind/ named.conf.local --volume /var/cache/bind --volume /var/lib/bind \ --volume --rm --net dmz_net --ip 172.16.123.129 --cap-add=NET_ADMIN internetsystemsconsortium/bind9:9.16
sudo docker run --name=bind9_myorg_auth --volume /home/gors/dns/etcbind/db.myorg.net:/etc/bind/db.myorg.net --volume /home/gors/dns etcbind/named.conf.local:/etc/bind/ named.conf.local --volume /var/cache/bind --volume /var/lib/bind \ --volume --rm --net dmz_net --ip 172.16.123.129 --cap-add=NET_ADMIN internetsystemsconsortium/bind9:9.16 -d
sudo docker run --name=bind9_myorg_auth --volume /home/gors/dns/etcbind/db.myorg.net:/etc/bind/db.myorg.net --volume /home/gors/dns etcbind/named.conf.local:/etc/bind/ named.conf.local --volume /var/cache/bind --volume /var/lib/bind \ --volume --rm --net dmz_net --ip 172.16.123.129 --cap-add=NET_ADMIN internetsystemsconsortium/bind9:9.16 
sudo docker run –d --name=bind9_myorg_auth --volume /home/gors/dns/etcbind/db.myorg.net:/etc/bind/db.myorg.net --volume /home/gors/dns etcbind/named.conf.local:/etc/bind/ named.conf.local  --rm --net dmz_net --ip 172.16.123.129 --cap-add=NET_ADMIN internetsystemsconsortium/bind9:9.16
sudo docker run –d --name=bind9_myorg_auth --volume /home/gors/dns/etcbind/db.myorg.net:/etc/bind/db.myorg.net --rm --net dmz_net --ip 172.16.123.129 --cap-add=NET_ADMIN internetsystemsconsortium/bind9:9.16
sudo docker run--name=bind9_myorg_auth --volume /home/gors/dns/etcbind/db.myorg.net:/etc/bind/db.myorg.net --rm --net dmz_net --ip 172.16.123.129 --cap-add=NET_ADMIN internetsystemsconsortium/bind9:9.16
sudo docker run --name=bind9_myorg_auth --volume /home/gors/dns/etcbind/db.myorg.net:/etc/bind/db.myorg.net --rm --net dmz_net --ip 172.16.123.129 --cap-add=NET_ADMIN internetsystemsconsortium/bind9:9.16
docker ps
sudo docker run -d --name=bind9_myorg_auth --volume /home/gors/dns/etcbind/db.myorg.net:/etc/bind/db.myorg.net --rm --net dmz_net --ip 172.16.123.129 --cap-add=NET_ADMIN internetsystemsconsortium/bind9:9.16
docker ps
docker exec client dig @172.16.123.129 ns.myorg.net
docker exec bind9_myorg_auth ip r d default 
docker exec bind9_myorg_auth ip r a default via 172.16.123.139
docker exec client dig @172.16.123.129 ns.myorg.net
docker exec client dig @172.16.123.129 www.myorg.net
docker exec client dig @172.16.123.129 www.internal.myorg.net
docker exec -it bind9_myorg_auth bash
./clean.sh 
cd /home/gors/
cd dns/
ls
cd etcbind/
ls
rm -r db.myorg.net/ named.conf.local/
sudo rm -r db.myorg.net/ named.conf.local/
ls
vim db.myorg.net
cd /etc
cd bind/
ls
cat db.gors.net 
cp db.gors.net /home/gors/dns/db.myorg.net
sudo cp db.gors.net /home/gors/dns/db.myorg.net
cd /home/gors/dns/
ls
rm db.myorg.net 
sudo rm db.myorg.net 
cd /etc
cd bind
ls
cp db.gors.net /home/gors/dns/etcbind/db.myorg.net
sudo cp db.gors.net /home/gors/dns/etcbind/db.myorg.net
cd /home/gors/dns/etcbind/
ls
vim db.myorg.net 
sudo vim db.myorg.net 
cp /etc/bind/named.conf.local /home/gors/dns/etcbind/named.conf.local
sudo cp /etc/bind/named.conf.local /home/gors/dns/etcbind/named.conf.local
ls
chmod a+x *
sudo chmod a+x *
sudo vim named.conf.local 
clear
sudo docker run -d --name=bind9_myorg_auth --volume /home/gors/dns/etcbind/db.myorg.net:/etc/bind/db.myorg.net --volume /home/gors/dns/etcbind/named.conf.local:/etc/bind/named.conf.local --rm --net dmz_net --ip 172.16.123.129 --cap-add=NET_ADMIN internetsystemsconsortium/bind9:9.16
docker ps
docker ps -a
cd ~
ls
./clean.sh 
./org1-dmz-nat.sh 
sudo docker run -d --name=bind9_myorg_auth --volume /home/gors/dns/etcbind/db.myorg.net:/etc/bind/db.myorg.net --volume /home/gors/dns/etcbind/named.conf.local:/etc/bind/named.conf.local --rm --net dmz_net --ip 172.16.123.129 --cap-add=NET_ADMIN internetsystemsconsortium/bind9:9.16
docker ps
docker exec bind9_myorg_auth host ns.myorg.net
docker exec bind9_myorg_auth ip a
docker exec bind9_myorg_auth ip r d default
docker exec bind9_myorg_auth ip r a default via 172.16.123.139
docker exec bind9_myorg_auth ip r
docker exec bind9_myorg_auth ping 1.1.1.1
docker exec -it bind9_myorg_auth bash
cd /home/gors/etcbind/
ls
cd ..
ls
cd etcbind/
ls
cd ..
cd dns/
cd etcbind/
ls
cat db.myorg.net 
vim db.myorg.net 
sudo vim db.myorg.net 
cat named.conf.local 
cd ~
./clean.sh 
./org1-dmz-nat.sh 
sudo docker run -d --name=bind9_myorg_auth --volume /home/gors/dns/etcbind/db.myorg.net:/etc/bind/db.myorg.net --volume /home/gors/dns/etcbind/named.conf.local:/etc/bind/named.conf.local --rm --net dmz_net --ip 172.16.123.129 --cap-add=NET_ADMIN internetsystemsconsortium/bind9:9.16
docker exec bind9_myorg_auth ip r d default
docker exec bind9_myorg_auth ip r a default via 172.16.123.139
docker exec externalhost ping 172.16.123.129
docker exec -it bind9_myorg_auth bash
./clean.sh 
./org1-dmz-nat.sh 
sudo docker run –d --name=bind9_myorg_auth --volume /home/gors/dns/etcbind/db.myorg.net:/etc/bind/db.myorg.net --volume
home/gors/dns/etcbind/named.conf.local:/etc/bind/ named.conf.local --volume /var/cache/bind --volume /var/lib/bind \ 
sudo docker run –d --name=bind9_myorg_auth --volume /home/gors/dns/etcbind/db.myorg.net:/etc/bind/db.myorg.net --volume home/gors/dns/etcbind/named.conf.local:/etc/bind/ named.conf.local --volume /var/cache/bind --volume /var/lib/bind \ 
sudo docker run –d --name=bind9_myorg_auth --volume /home/gors/dns/etcbind/db.myorg.net:/etc/bind/db.myorg.net --volume home/gors/dns/etcbind/named.conf.local:/etc/bind/ named.conf.local --volume /var/cache/bind --volume /var/lib/bind / --rm --net dmz_net --ip 172.16.123.129 --cap-add=NET_ADMIN internetsystemsconsortium/bind9:9.16
sudo docker run –d --name=bind9_myorg_auth --volume /home/gors/dns/etcbind/db.myorg.net:/etc/bind/db.myorg.net --volume home/gors/dns/etcbind/named.conf.local:/etc/bind/ named.conf.local --volume /var/cache/bind --volume /var/lib/bind:/var/lib/bind --rm --net dmz_net --ip 172.16.123.129 --cap-add=NET_ADMIN internetsystemsconsortium/bind9:9.16
sudo docker run –d --name=bind9_myorg_auth --volume /home/gors/dns/etcbind/db.myorg.net:/etc/bind/db.myorg.net --volume home/gors/dns/etcbind/named.conf.local:/etc/bind/ named.conf.local --volume /var/cache/bind:/var/cache/bind --volume /var/lib/bind:/var/lib/bind --rm --net dmz_net --ip 172.16.123.129 --cap-add=NET_ADMIN internetsystemsconsortium/bind9:9.16
sudo docker run –d --name=bind9_myorg_auth --volume /home/gors/dns/etcbind/db.myorg.net:/etc/bind/db.myorg.net --volume home/gors/dns/etcbind/named.conf.local:/etc/bind/named.conf.local --volume /var/cache/bind:/var/cache/bind --volume /var/lib/bind:/var/lib/bind --rm --net dmz_net --ip 172.16.123.129 --cap-add=NET_ADMIN internetsystemsconsortium/bind9:9.16
sudo docker run -d --name=bind9_myorg_auth --volume /home/gors/dns/etcbind/db.myorg.net:/etc/bind/db.myorg.net --volume /home/gors/dns/etcbind/named.conf.local:/etc/bind/named.conf.local --rm --net dmz_net --ip 172.16.123.129 --cap-add=NET_ADMIN internetsystemsconsortium/bind9:9.16
cd /home/gors/dns/etcbind/
ls
sudo vim db.myorg.net 
cd ~
./clean.sh 
./org1-dmz-nat.sh r
sudo docker run -d --name=bind9_myorg_auth --volume /home/gors/dns/etcbind/db.myorg.net:/etc/bind/db.myorg.net --volume /home/gors/dns/etcbind/named.conf.local:/etc/bind/named.conf.local --rm --net dmz_net --ip 172.16.123.129 --cap-add=NET_ADMIN internetsystemsconsortium/bind9:9.16
docker exec bind9_myorg_auth ip r d default
docker exec bind9_myorg_auth ip r a default via 172.16.123.139
docker exec -it bind9_myorg_auth bash
docker exec client ping 172.16.123.129
docker exec router ping 172.16.123.129
docker exec client ping 172.16.123.130
docker exec bind9_myorg_auth ip r a 10.0.0.0/8 via 172.16.123.142
docker exec client ping 172.16.123.129
docker exec -it client bash
docker exec client ping ns.myorg.net
cd /home/gors/dns/etcbind/
ls
car db.myorg.net 
cat db.myorg.net 
cd ~
vim org1-dmz-nat.sh 
./clean.sh 
./org1-dmz-nat.sh 
docker exec client dig @172.16.123.129 ns.myorg.net
docker exec client ping ns.myorg.net
ls
cd dns/
ls
cat Dockerfile 
cd ..
docker ps
docker exec -it dns_dmz bash
docker exec externalhost ping ns.myorg.net
cd dns
cd ..
cd tests/
ls
cd ..
cd dns/
vim test.sh
chmod a+x *

docker exec server ping ns.myorg.net
docker exec public_server ping ns.myorg.net
docker exec public_server google.com
docker exec public_server ping google.com
docker exec public_server cat /etc/resolv.conf
ip r
ip a
docker exec client echo 'nameserver 127.0.0.11' > /etc/resolv.conf
sudo docker exec client echo 'nameserver 127.0.0.11' > /etc/resolv.conf
docker exec client sudo echo 'nameserver 127.0.0.11' > /etc/resolv.conf
docker exec -it client bash
docker exec dns_dmz ping 1.1.1.1
docker exec dns_dmz ping google.com
cd ..
ls
git status
git add -A
git rm --cached zabbix_code/
git add org1-dmz-nat.sh dns/test.sh 
git status
git commit - m "Dns works" 
git commit -m "Dns works" 
sudo git commit -m "Dns works" 
sudo git push RD22 main
ls
sudo git push RD22 main
git config --global credential.helper cache
git config --global credential.helper store
sudo git push RD22 main
./clean.sh 
./org1-dmz-nat.sh 
cd dns/
./test.sh 
cd /home/gors/dns/etcbind/
ls
docker exec -it client bash
docker exec -it dns_dmz bash
docker exec client ping ns.myorg.net
docker exec client ping ns.myorg.web.net
docker exec -it dns_dmz bash
docker exec client ping www.myorg.net
docker exec client dig @172.16.123.129 www.myorg.net
docker exec client dig @172.16.123.129 ns.myorg.net
docker exec client dig@172.16.123.129 ns.myorg.net
docker exec client dig @172.16.123.129 ns.myorg.net
docker exec -it client bash
docker exec client dig @172.16.123.129 ns.myorg.net
docker exec client dig @172.16.123.129 www.myorg.net
docker exec client dig @172.16.123.129 www.ns.myorg.net
docker exec client dig @172.16.123.129 www.myorg.net
docker exec client dig @172.16.123.129 ns.myorg.net
docker exec -it dns_dmz bash
docker exec client dig @172.16.123.129 ns.gors.net
vim db.myorg.net 
cd ~
./clean.sh 
./org1-dmz-nat.sh 
docker exec client dig @172.16.123.129 ns.gors.net
docker exec client dig @172.16.123.129 ns.myorg.net
cd /home/gors/dns/etcbind/
sudo vim db.myorg.net 
cd ~
./clean.sh 
./org1-dmz-nat.sh 
docker exec client dig @172.16.123.129 ns.myorg.net
docker exec client dig @172.16.123.129 www.ns.myorg.net
docker exec client dig @172.16.123.129 ns.myorg.net
docker exec client dig @172.16.123.129 www.ns.myorg.net
cd /home/gors/dns/etcbind/
sudo vim db.myorg.net 
cd ~
./clean.sh 
./org1-dmz-nat.sh 
docker exec client dig @172.16.123.129 ns.myorg.net
docker exec client dig @172.16.123.129 www.ns.myorg.net
docker exec client ping 172.16.123.129
docker exec client ping ns.myorg.net
docker exec -it dns_dmz bash
docker exec client dig @172.16.123.129 ns.myorg.net
docker exec client dig @172.16.123.129 www.ns.myorg.net
cd /home/gors/dns/etcbind/
ls
cat db.myorg.net 
docker exec -it dns_dmz bash
docker exec client dig @172.16.123.129 ns.myorg.net
docker exec client dig @172.16.123.129 www.ns.myorg.net
vim db.myorg.net 
sudo vim db.myorg.net 
cd ~
./clean.sh 
./org1-dmz-nat.sh 
docker exec client dig @172.16.123.129 ns.myorg.net
docker exec client dig @172.16.123.129 www.myorg.net
docker exec client ping ns.myorg.net
docker exec client ping www.myorg.net
docker exec client curl www.myorg.net
cd dns/
ls
vim test.sh 
./test.sh 
vim test.sh 
./test.sh 
vim test.sh 
./test.sh 
ls
cd ..
ls
mkdir project 
ls
cp simpleVPN/ project/
cp -r simpleVPN/ project/
cd project/
ls
cd simpleVPN/
ls
cd ..
cd dns/ project/
cp -r dns/ project/
cp -r server/ project/
cp -r router/ project/
cp -r squid_proxy/ project/
ls
cd project/
ls
cd ..
rm -r router/
rm -r server/
rm -r squid_proxy/
rm -r dns/
ls
rm -r simpleVPN/
ls
cd project/
ls
cd ..
cp clean.sh org1-dmz-nat.sh project/
cd project/
./clean.sh 
./org1-dmz-nat.sh 
cd .
cd ..
ls
rm clean.sh org1-dmz-nat.sh 
ls
rm simpleVPN/
rm -r simpleVPN/
sudo rm -r simpleVPN/
ls
cd project/
ls
cd s
cd simpleVPN/
./setup.sh 
./run_VPN_server.sh 
vim run_VPN_client.sh 
vim run_VPN_server.sh 
vim run_VPN_client.sh.sh 
ls
./run_VPN_client.sh 
cd ..
docker ps
cp simpleVPN/ /..
cp -r simpleVPN/ /..
sudo cp -r simpleVPN/ /..
cd ..
ls
cd project/
ls
cd simpleVPN/
ls
cd .
cd ..
sudo cp -r simpleVPN/ /home/theuser/
cd ..
ls
cd simpleVPN/
./setup.sh 
docker exec -it dns_dmz bash
cd ..
cd project/
cd dns/
./test.sh 
vim test.sh 
docker exec client dig @172.16.123.129 google.com
docker exec client dig @172.16.123.129 www.google.com
docker exec client dig @172.16.123.129 www.myorg.net
docker exec client ping 1.1.1.1
docker exec client ping google.com
docker exec router ping google.com
cd ..
ls
cd project/
ls
cd server/
ls
cd html/
ls
cat index.html 
cd ..
ls
vim Dockerfile 
ls
cd ..
cat org1-dmz-nat.sh 
docker image ls
ls
cd ..
ls
sudp cp -r baseimage/ project/
sudo cp -r baseimage/ project/
rm baseimage/
rm -r baseimage/
ls
cd project/
ls
cd baseimage/
ls
vim Dockerfile 
sudo vim Dockerfile 
cd ..
sudo docker build --tag netubuntu ~/project/baseimage/
ls
vim org1-dmz-nat.sh 
./clean.sh 
./org1-dmz-nat.sh 
docker exec -it client bash
cd simpleVPN/
./setup.sh 
./run_VPN_server.sh 
./run_VPN_client.sh 
ls
docker exec externalhost ping 10.0.1.100
cd ..
ls
cd ..
ls
cd nginxlogs/
ls
cd ..
sudo rm -r simpleVPN/
ls
cd tests/
ls
cd ..
cp tests/ project/connectivity_tests
cp -r tests/ project/connectivity_tests
ls
cd project/
ls
cd ..
ls
sudo rm -rf tests/
ls
cd project/
docker exec externalhost ping 10.0.1.100
docker exec externalhost ping 10.0.2.100
docker exec externalhost ping 10.0.1.253
cd squid_proxy/
ls
cd ..
cd simpleVPN/
ls
vim test_VPN.sh
chmod a+x test_VPN.sh 
./test_VPN.sh 
vim test_VPN.sh
./test_VPN.sh 
docker exec externalhost ping 10.0.1.100
vim test_VPN.sh
./test_VPN.sh 
vim test_VPN.sh
./test_VPN.sh 
wq
:wq
ls
cd ..
cd simpleVPN/
./stop_VPN.sh 
./test_VPN.sh 
cd ~
ls
git status
git add -A
sudo git add -A
sls
ls
cd project/
ls
cd ..
sudo git push RD22 main
