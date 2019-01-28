#!/bin/bash

#install java 8 and essentials


chmod a+x blynk.sh

sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt install oracle-java8-installer
java -version


sudo iptables -L
sudo iptables -S
sudo iptables -F
sudo iptables -A INPUT -m conntrack --ctstate ESTABLISHED,RELATED -j ACCEPT
sudo iptables -L
sudo iptables -A INPUT -p tcp --dport 22 -j ACCEPT
sudo iptables -A INPUT -p tcp --dport 80 -j ACCEPT
sudo iptables -A INPUT -p tcp --dport 8440 -j ACCEPT
sudo iptables -A INPUT -p tcp --dport 8441 -j ACCEPT
sudo iptables -A INPUT -p tcp --dport 8080 -j ACCEPT
sudo iptables -A INPUT -p tcp --dport 9443 -j ACCEPT
sudo iptables -A INPUT -p tcp --dport 587 -j ACCEPT
sudo iptables -A INPUT -p tcp --dport 465 -j ACCEPT
sudo iptables -I INPUT 1 -i lo -j ACCEPT
sudo iptables -S
sudo iptables -P INPUT DROP
sudo iptables -A INPUT -j DROP
sudo apt-get update
sudo apt-get install iptables-persistent
sudo invoke-rc.d iptables-persistent save
