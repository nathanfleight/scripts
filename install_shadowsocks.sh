#!/bin/sh
apt -y install shadowsocks-libev rng-tools

cat > /etc/shadowsocks-libev/config.json <<EOF
{
   "server":["0.0.0.0"],
   "mode":"tcp_and_udp",
   "server_port":8388,
   "password":"Elibawnos",
   "timeout":60,
   "method":"chacha20-ietf-poly1305",
   "nameserver":"1.1.1.1"
}
EOF
