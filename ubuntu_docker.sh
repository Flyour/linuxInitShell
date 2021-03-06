#/bin/bash

cd ~

sudo apt-get remove docker docker-engine docker-ce docker.io
sudo apt-get update
sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io

sudo groupadd docker
sudo gpasswd -a $USER docker
newgrp docker
docker ps

echo "{" > /etc/docker/daemon.json
echo "    \"registry-mirrors\": [\"https://registry.docker-cn.com\"]" >> /etc/docker/daemon.json
echo "}" >> /etc/docker/daemon.json

# test
sudo docker run hello-world
