echo "testing cache>>>>>>"

sleep 2

sudo docker exec -it client curl -x 10.0.1.253:3128 http://10.0.2.100/

sleep 2

sudo docker exec -it squid_proxy cat /var/log/squid/access.log

sleep 2

echo "testing cache>>>>>>"

sleep 2

sudo docker exec -it client curl -x 10.0.1.253:3128 http://10.0.2.100/

sleep 2

sudo docker exec -it squid_proxy cat /var/log/squid/access.log

