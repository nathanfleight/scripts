#!/bin/sh
apt update;apt -y install openssh-server net-tools curl
service ssh restart

sed -i "s/#PermitRootLogin prohibit-password/PermitRootLogin yes/" /etc/ssh/sshd_config
sed -i "s/#PasswordAuthentication yes/PasswordAuthentication yes/" /etc/ssh/sshd_config
service ssh restart
echo "root:Pmataga87465622" | chpasswd

sleep 2
netstat -ntlp

wget https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-amd64.tgz
tar -xvf ngrok-v3-stable-linux-amd64.tgz
./ngrok authtoken 29zaCvGiC7z56OHlOTiDALBZigi_7rqDA8efFY5FqvNECuGri
./ngrok tcp 22 && curl http://127.0.0.1:4040/api/tunnels &
netstat -ntlp
