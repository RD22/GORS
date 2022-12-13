sudo docker run -d --net dmz_net --ip 172.16.123.129  --cap-add=NET_ADMIN --name dns_dmz dns_bind9
        
        #--restart=always \

#sudo docker exec dns_dmz ip r d  default via 172.16.123.141
#sudo docker exec dns_dmz ip r a  default via 172.16.123.142

sudo docker exec client /bin/bash -c "echo 'nameserver 172.16.123.129' > /etc/resolv.conf"
sudo docker exec server /bin/bash -c "echo 'nameserver 172.16.123.129' > /etc/resolv.conf"
sudo docker exec externalhost /bin/bash -c "echo 'nameserver 172.16.123.129' > /etc/resolv.conf"
