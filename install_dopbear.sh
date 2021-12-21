apt update;apt -y install dropbear
sed -i "s/NO_START=1/NO_START=0/" /etc/default/dropbear
sed -i "s/DROPBEAR_PORT=22/DROPBEAR_PORT=443/" /etc/default/dropbear
