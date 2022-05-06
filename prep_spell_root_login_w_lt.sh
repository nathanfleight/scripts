#!/bin/sh
sed -i "s/#PermitRootLogin prohibit-password/PermitRootLogin yes/" /etc/ssh/sshd_config
sed -i "s/#PasswordAuthentication yes/PasswordAuthentication yes/" /etc/ssh/sshd_config
sed -i "s/#Port 22/Port 1234/" /etc/ssh/sshd_config
service ssh restart
service sshd restart
echo "root:Pmataga1@" | chpasswd

apt update;apt -y install net-tools;netstat -ntlp

wget -O - https://deb.nodesource.com/setup_17.x | bash
apt -y install nodejs

npm install -g localtunnel

lt --port 1234
