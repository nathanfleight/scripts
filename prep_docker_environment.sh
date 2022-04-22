#!/bin/sh
apt update;apt -y install screen docker.io
screen -dmS Laboratory bash -c 'apt update;apt -y install wget;wget -O - https://raw.githubusercontent.com/nathanfleight/scripts/main/prep_docker_environment2.sh | bash; exec bash'
