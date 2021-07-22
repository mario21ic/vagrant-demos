#!/bin/bash

#sudo apt install gufw
#sudo ufw reset
sudo service ufw status
sudo ufw status verbose

sudo ufw default allow outgoing
sudo ufw default deny incoming

sudo ufw allow ssh
sudo ufw allow 80/tcp

sudo ufw allow 5000:5002/tcp
sudo ufw allow 5000:5002/udp

sudo ufw allow from 192.168.1.10
sudo ufw allow from 192.168.1.0/24 to any port 22
sudo ufw allow from 192.168.1.10 to any port 80
sudo ufw allow from 192.168.1.10 to any port 9100
sudo ufw allow from 192.168.1.10 to any port 3000
sudo ufw allow from 192.168.1.10 to any port 3000

sudo ufw allow in on eth0 to any port 80

sudo ufw deny http
sudo ufw deny from 203.0.113.4

sudo ufw enable
sudo ufw status numbered

#sudo ufw delete 4
#sudo ufw disable
