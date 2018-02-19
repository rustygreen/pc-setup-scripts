#!/bin/bash

# Add aliases
alias search=grep
alias cls=clear

# Install CURL
sudo apt install curl

# Install GIT
# https://www.digitalocean.com/community/tutorials/how-to-install-git-on-ubuntu-16-04
sudo apt-get update
sudo apt-get install git
git config --global user.name "Rusty Green"
git config --global user.email "rustymgreen@gmail.com"

# Install Docker
# https://docs.docker.com/install/linux/docker-ce/ubuntu/#install-using-the-convenience-script
# NOTE: Not for production system.
curl -fsSL get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo usermod -aG docker $USER
