#!/bin/sh
apt update >/dev/null
apt -y install iputils-ping >/dev/null

while true
do
ping -c 20 t.co
sleep 120
done
