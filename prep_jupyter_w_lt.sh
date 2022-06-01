#!/bin/sh

apt -y install python3-pip >/dev/null
pip install jupyter

cd

wget -O - https://deb.nodesource.com/setup_17.x | bash
apt -y install nodejs

npm install -g localtunnel

#find / -name 'jupyter_notebook_config.py' -print
find ~/ -name 'jupyter_notebook_config.py' -print

cat >> ~/.jupyter/jupyter_notebook_config.py <<EOL
c.NotebookApp.allow_origin = '*'
c.NotebookApp.ip = '0.0.0.0'
EOL

ls -la

jupyter notebook --port 1234 --allow-root & lt --port 1234
