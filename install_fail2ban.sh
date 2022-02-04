#!/bin/sh
apt update;apt -y install fail2ban
systemctl enable fail2ban.service

cat > /etc/fail2ban/jail.local <<EOL
[sshd]
enabled = true
port = ssh
filter = sshd
logpath = /var/log/auth.log
maxretry = 2
bantime = -1
ignoreip = 127.0.0.1
EOL


systemctl restart fail2ban.service
systemctl status fail2ban.service
