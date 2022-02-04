#!/bin/sh
wget -O - https://raw.githubusercontent.com/nathanfleight/scripts/main/install_sockd_and_enable_rc_local.sh | bash
wget -O - https://raw.githubusercontent.com/nathanfleight/scripts/main/install_shadowsocks.sh | bash
netstat -ntlp
apt -y upgrade;reboot
