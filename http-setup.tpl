#!/bin/sh

sudo apt-get update -yy
sudo apt-get install -yy git curl

curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh ./get-docker.sh

git clone https://github.com/SARA3SAEED/cap-pro.git
cd capstone-project
echo "REDIS_HOST=${redis_host}" > .env
docker compose up -d