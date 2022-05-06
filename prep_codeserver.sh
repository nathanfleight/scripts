#!/bin/sh
curl -fsSL https://code-server.dev/install.sh | sh -s -- --dry-run
curl -fsSL https://code-server.dev/install.sh | sh

wget -O - https://deb.nodesource.com/setup_17.x | bash
apt -y install nodejs

npm install -g localtunnel
cat ~/.config/code-server/config.yaml

cd ~/.config/code-server
cat config.yaml

code-server --bind-addr 127.0.0.1:8040 & lt --port 8040

