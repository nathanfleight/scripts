#!/bin/sh
pip install jupyter
wget -O - https://deb.nodesource.com/setup_17.x | bash
apt -y install nodejs

npm install -g localtunnel

find / -type f | xargs grep 'jupyter_notebook_config.py'

jupyter notebook --port 1234 --allow-root & lt --port 1234
