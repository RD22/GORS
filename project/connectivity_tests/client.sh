echo "testing client connectivity"

sleep 3

echo ">>>>>server"
sudo docker exec client ping 10.0.2.100 -c 3

sleep 3 

echo ">>>> proxy server"

sudo docker exec client ping 10.0.1.253 -c 3

sleep 3

echo ">>>> internal router"
sudo docker exec client ping 10.0.1.254 -c 3

sleep 3

echo ">>>> public server"
sudo docker exec client ping 172.16.123.130 -c 3

sleep 3

echo ">>>> dns server"
sudo docker exec client ping 172.16.123.129 -c 3

sleep 3

echo ">>>> edge router"
sudo docker exec client ping 172.31.255.253 -c 3

sleep 3

echo ">>>> external host"
sudo docker exec client ping 172.31.255.101 -c 3

sleep 3

echo ">>>> internet"
sudo docker exec client ping 1.1.1.1 -c 3

sleep 3

echo ">>>>> success"







