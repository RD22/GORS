
sudo docker exec externalhost pkill -f /home/tun_client.py

wait

sudo docker exec router pkill -f /home/tun_server.py

wait
