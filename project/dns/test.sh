echo ">>>> testing dig and ping to DNS Server"

sleep 2
sudo docker exec client dig ns.myorg.net

sleep 2
sudo docker exec client ping ns.myorg.net -c 3

sleep 2
echo ">>>> testing dig and ping to public server domain name"
sleep 2
sudo docker exec externalhost dig @172.16.123.129 www.myorg.net

sleep 2
sudo docker exec externalhost ping www.myorg.net -c 3


