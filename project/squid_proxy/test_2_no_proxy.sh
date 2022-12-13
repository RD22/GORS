echo ">>>> testing with iptable rule : iptables -t filter -A FORWARD -p tcp -- dport 80 ! -s 10.0.1.253 -j DROP’"

sleep 2

echo ">>>> testing  without proxy"

sleep 1

sudo docker exec -it client curl http://10.0.2.100/


