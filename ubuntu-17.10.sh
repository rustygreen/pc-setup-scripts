#!/bin/bash

# Upgrade
sudo apt update && sudo apt upgrade

# Enable Canonical Partner repositories
# https://itsfoss.com/things-installing-ubuntu-17-10/

# Install media codecs
sudo apt-get install ubuntu-restricted-extras

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
sudo snap install docker
sudo snap connect docker:home
sudo addgroup --system docker
sudo adduser $USER docker
newgrp docker
sudo snap disable docker
sudo snap enable docker

# Install tweak tool
sudo apt install gnome-tweak-tool

# Gnome OSX theme
# https://www.gnome-look.org/p/1171688/

# Paper theme
sudo add-apt-repository ppa:snwh/pulp
sudo apt-get update
sudo apt-get install paper-*-theme

# Install Numix theme
sudo add-apt-repository ppa:numix/ppa
sudo apt-get update
sudo apt-get install numix-gtk-theme numix-icon-theme-circle

# Better terminal
sudo add-apt-repository ppa:elementary-os/daily
sudo apt-get update
sudo apt-get install pantheon-terminal

# NPM
sudo apt install npm

# Yarn
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update && sudo apt-get install yarn

# Install VLC
sudo snap install vlc

# QGIS
sudo apt update
sudo apt install qgis
