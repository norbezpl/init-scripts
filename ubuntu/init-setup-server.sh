#!/bin/bash

#Wersja dla użytku dla @norbezpl

# Instalowanie podstawowych narzędzi do funkcjonowania serwera

apt update
apt upgrade -y
apt install -y net-tools htop ssh mc libgee-0.8-dev libjson-glib-dev libvte-2.91-dev valac aria2 lsb-release aptitude yarn nginx wget silversearcher-ag guake git curl nano apt-transport-https ca-certificates gnupg-agent software-properties-common

# Konfiguracja git
read -p "Wpisz adres e-mail, aby skonfigurować zatwierdzenia git (ten sam, który jest używany na Twoim koncie): " git_email
read -p "Wpisz nazwę, która pojawi się w zatwierdzeniach: " git_name
git config --global user.email "$git_email"
git config --global user.name "$git_name"

#INSTALL DOCKER
echo "Installing Docker"
sleep 2s
# curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
# cat /etc/os-release
# read -p "Wpisz wersje z pozycji UBUNTU_CODENAME: " codename
# sudo su << SUDO_COMANDS
# echo "deb [arch=amd64] https://download.docker.com/linux/ubuntu ${codename} stable" >> /etc/apt/sources.list
# SUDO_COMANDS
# sudo apt update -y
# sudo apt install -y docker-ce docker-ce-cli containerd.io
# sudo groupadd docker
# sudo usermod -aG docker $USER
# sudo systemctl enable docker

#INSTALL DOCKER-COMPOSE
echo "Installing Docker Compose"
sleep 2s
<<<<<<< HEAD
sudo curl -L "https://github.com/docker/compose/releases/download/1.24.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/bin/docker-compose
sudo chmod +x /usr/bin/docker-compose
=======
# sudo curl -L "https://github.com/docker/compose/releases/download/1.24.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/bin/docker-compose
# sudo chmod +x /usr/bin/docker-compose

# Konfiguracja git
read -p "Wpisz adres e-mail, aby skonfigurować zatwierdzenia git (ten sam, który jest używany na Twoim koncie): " git_email
read -p "Wpisz nazwę, która pojawi się w zatwierdzeniach: " git_name
git config --global user.email "$git_email"
git config --global user.name "$git_name"

>>>>>>> ee579afab078fd1420d4d166efdf7695eeab9789
