#!/bin/sh
wget -O - https://deb.nodesource.com/setup_17.x | bash >/dev/null
apt -y install nodejs >/dev/null
apt -y install npm >/dev/null
npm install -g localtunnel >/dev/null

wget https://github.com/coder/code-server/releases/download/v4.4.0/code-server-4.4.0-linux-amd64.tar.gz
tar -xf code-server-4.4.0-linux-amd64.tar.gz
cd code-server-4.4.0-linux-amd64
cd bin
export PASSWORD="Elibawnos"
./code-server --bind-addr 127.0.0.1:1234 & lt --port 1234
