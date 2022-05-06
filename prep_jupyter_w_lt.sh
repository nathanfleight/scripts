#!/bin/sh
pip install jupyter
wget -O - https://deb.nodesource.com/setup_17.x | bash
apt -y install nodejs

npm install -g localtunnel

jupyter notebook --port 1234 --allow-root & lt --port 1234 & cat /etc/jupyter/jupyter_notebook_config.py
