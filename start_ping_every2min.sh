#!/bin/sh
apt update > /dev/null
apt -y install iputils-ping > /dev/null

sleep .5

while true
do
ping -c 20 t.co
sleep 120
done
