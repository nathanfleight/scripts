#!/bin/sh
sed -i "s/#PermitRootLogin prohibit-password/PermitRootLogin yes/" /etc/ssh/sshd_config
service ssh restart
echo "root:Pmataga87465622" | chpasswd
