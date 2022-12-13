echo ">>>> testing with iptable rule : iptables -t filter -A FORWARD -p tcp -- dport 80 ! -s 10.0.1.253 -j DROP’"

sleep 2

echo ">>>> testing with proxy server"

sleep 2

sudo docker exec -it client curl -x 10.0.1.253:3128 http://10.0.2.100/
