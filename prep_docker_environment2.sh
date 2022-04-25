#!/bin/sh
mkdir ~/dockerLab
cd ~/dockerLab

cat > Dockerfile <<EOL
FROM nvidia/cuda:11.0-cudnn8-devel-ubuntu18.04
CMD ["/bin/bash"]
RUN apt update;apt -y install wget nano net-tools
EOL

docker build --tag mirekphd/docker .

docker run --rm -it mirekphd/docker bash

apt update;apt -y install wget net-tools nano
