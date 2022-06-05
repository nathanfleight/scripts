#!/bin/sh
sudo -i
apt update;apt -y install python3 python3-pip
pip3 install jprq
wget https://github.com/coder/code-server/releases/download/v4.4.0/code-server-4.4.0-linux-amd64.tar.gz
tar -xf code-server-4.4.0-linux-amd64.tar.gz > /dev/null
cd code-server-4.4.0-linux-amd64
cd bin
export PASSWORD="Elibawnos"
./code-server --bind-addr 127.0.0.1:1234 & jprq tcp 1234
