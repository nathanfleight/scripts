#!/bin/sh

apt -y install python3 python3-pip >/dev/null
pip3 install --upgrade pip >/dev/null
pip3 install jupyter >/dev/null

cd

wget -O - https://deb.nodesource.com/setup_17.x | bash >/dev/null
apt -y install nodejs >/dev/null

npm install -g localtunnel >/dev/null

find / -name 'jupyter_notebook_config.py' -print
find ~/ -name 'jupyter_notebook_config.py' -print

cat >> ~/.jupyter/jupyter_notebook_config.py <<EOL
c.NotebookApp.allow_origin = '*'
c.NotebookApp.ip = '0.0.0.0'
EOL

ls -la

jupyter notebook --port 1234 --allow-root &
lt --port 1234
