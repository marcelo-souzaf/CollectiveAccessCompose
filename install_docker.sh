#! /bin/bash

curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh

TAG=$(curl -s https://api.github.com/repos/docker/compose/releases/latest | grep "tag_name")
VERSION=${TAG:15:-2}
echo "Installing docker-compose version $VERSION"

curl -L "https://github.com/docker/compose/releases/download/$VERSION/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
