echo "USERNAME "

read var1

echo "PASSWORD"

read var2

sudo docker exec externalhost python3 /home/tun_client.py $var1 $var2

echo "VPN connection established!"
