#!/bin/sh
mkdir ~/dockerLab
cd ~/dockerLab

echo "FROM nvidia/cuda:11.0-cudnn8-devel-ubuntu18.04" > Dockerfile
echo "CMD [\"/bin/bash\"]" >> Dockerfile

docker build --tag mirekphd/docker .

docker run --interactive --tty mirekphd/docker /bin/bash

apt update;apt -y install wget net-tools nano
