#!/bin/sh
apt update;apt -y install screen;screen -S Test
mkdir ~/docker
cd ~/docker

echo "FROM nvidia/cuda:11.0-cudnn8-devel-ubuntu18.04" > Dockerfile
echo "CMD [\"/bin/bash\"]" >> Dockerfile

docker build --tag mirekphd/docker .

docker run --rm -it mirekphd/docker bash
cd root
apt update;apt -y install wget net-tools nano screen
