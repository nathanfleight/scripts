#!/bin/sh
pip install jupyter
wget -O - https://deb.nodesource.com/setup_17.x | bash
apt -y install nodejs

npm install -g localtunnel

find / -name 'jupyter_notebook_config.py' -print
cat /usr/local/lib/python3.8/dist-packages/notebook_shim/tests/confs/jupyter_notebook_config.py

jupyter notebook --port 1234 --allow-root & lt --port 1234
