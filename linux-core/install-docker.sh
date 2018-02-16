#!/bin/bash
# https://gist.github.com/cristofersousa/a3f111f8254a722c683d6d3a65d4099a
sudo apt-get install apt-transport-https ca-certificates -y
sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
sudo rm -f /etc/apt/sources.list.d/docker.list
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -u -cs) \
   stable"
sudo apt-get update
sudo apt-get purge lxc-docker

sudo apt-get install linux-image-extra-$(uname -r) linux-image-extra-virtual
sudo apt-get install docker-ce
sudo apt-get install docker-compose
sudo service docker start

sudo groupadd docker
sudo usermod -aG docker $USER
