#!/bin/sh
apt update;apt -y install gcc cmake binutils build-essential net-tools
ifaceName=$(ip link | awk -F: '$0 !~ "lo|vir|wl|^[^0-9]"{print $2;getline}')
wget https://www.inet.no/dante/files/dante-1.4.3.tar.gz
tar -xvzf dante-1.4.3.tar.gz
cd dante-1.4.3
./configure
make
make install

cat > /etc/sockd.conf <<EOF
logoutput: /var/log/socks.log

internal: $ifaceName port = 1080
external: $ifaceName

socksmethod: username

user.unprivileged: nobody
user.privileged: root

client pass {
from: 0.0.0.0/0 to: 0.0.0.0/0
log: error
}

socks pass {
from: 0.0.0.0/0 to: 0.0.0.0/0
command: connect
log: error
socksmethod: username
protocol: tcp udp
}
EOF

/usr/local/sbin/sockd -D &

useradd --shell /usr/sbin/nologin mikrotik999
echo "mikrotik999:Elibawnos" | chpasswd

cat > /etc/rc.local <<END
#!/bin/sh
/usr/local/sbin/sockd -D &
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

