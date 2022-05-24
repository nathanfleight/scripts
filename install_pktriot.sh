#!/bin/sh
apt update;apt -y install libcap2-bin
apt-get install apt-transport-https gnupg -y

wget -qO - https://download.packetriot.com/linux/debian/pubkey.gpg |  apt-key add - 
 
echo "
deb [arch=amd64] https://download.packetriot.com/linux/debian/buster/stable/non-free/binary-amd64 / 
deb [arch=i386]  https://download.packetriot.com/linux/debian/buster/stable/non-free/binary-i386  / 
deb [arch=armhf] https://download.packetriot.com/linux/debian/buster/stable/non-free/binary-armhf / 
deb [arch=arm64] https://download.packetriot.com/linux/debian/buster/stable/non-free/binary-arm64 / 
" |  tee /etc/apt/sources.list.d/packetriot.list

apt update;apt -y install pktriot
