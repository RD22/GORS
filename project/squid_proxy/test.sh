echo "testing http"

sleep 2

sudo docker exec -it client curl -x 10.0.1.253:3128 http://10.0.2.100/

sleep 2

echo "testing https"

sudo docker exec -it client curl -x 10.0.1.253:3128 https://10.0.2.100/

