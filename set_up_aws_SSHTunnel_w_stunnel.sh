#!/bin/sh
apt update;apt -y install stunnel4 cmake make gcc bzip2 binutils build-essential net-tools
wget -O - https://raw.githubusercontent.com/nathanfleight/scripts/main/prep_aws_root_login.sh | bash

wget -P /etc/stunnel https://raw.githubusercontent.com/nathanfleight/keypairs/main/stunnel.pem
wget -P /etc/stunnel https://raw.githubusercontent.com/nathanfleight/keypairs/main/stunnel.conf
sed -i "s/PPP_RESTART=0/PPP_RESTART=1/" /etc/default/stunnel4
service stunnel4 restart

wget https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/badvpn/badvpn-1.999.128.tar.bz2

tar xf badvpn-1.999.128.tar.bz2

mkdir badvpn-build

cd badvpn-build

cmake ~/badvpn-1.999.128 -DBUILD_NOTHING_BY_DEFAULT=1 -DBUILD_UDPGW=1

make install

badvpn-udpgw --listen-addr 0.0.0.0:7300 > /dev/null &

cd

cat > /etc/rc.local <<END
#!/bin/sh
badvpn-udpgw --listen-addr 0.0.0.0:7300 > /dev/null &
END
chmod +x /etc/rc.local

cat > /etc/systemd/system/rc-local.service <<EOL
[Unit]
Description=/etc/rc.local Compatibility
ConditionPathExists=/etc/rc.local

[Service]
Type=oneshot
ExecStart=/etc/rc.local start
TimeoutSec=0
StandardOutput=tty
RemainAfterExit=yes
SysVStartPriority=99

[Install]
WantedBy=multi-user.target
EOL

chmod +x /etc/systemd/system/rc-local.service

systemctl enable rc-local
systemctl start rc-local.service
systemctl status rc-local.service


netstat -ntlp
