echo ">>>>Testing VPN"

sleep 1

echo ">>>> external host --> client"

docker exec externalhost ping 10.0.1.100 -c 3

sleep 2

echo ">>>> external host --> server"

sleep 2
docker exec externalhost curl 10.0.2.100


