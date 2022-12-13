sudo docker exec externalhost apt-get -y install scapy
wait

sudo docker exec router apt-get -y install scapy
wait

sudo docker exec externalhost mkdir -p /dev/net
wait
sudo docker exec externalhost mknod /dev/net/tun c 10 200
wait
sudo docker exec externalhost chmod 600 /dev/net/tun
#wait

sudo docker exec router mkdir -p /dev/net
wait
sudo docker exec router mknod /dev/net/tun c 10 200
wait
sudo docker exec router chmod 600 /dev/net/tun
wait

