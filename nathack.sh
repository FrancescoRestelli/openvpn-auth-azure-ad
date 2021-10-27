#this command fakes all clients ip´s to be this servers ip,
#this allows operation without extra routing effort
sudo iptables -t nat -A POSTROUTING -s 172.16.4.0/24 -o eth0 -j MASQUERADE
