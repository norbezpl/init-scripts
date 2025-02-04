#!/bin/bash

                echo
                echo "-----------------------------------------"
                echo "Witaj w init-setup do Linuxa" 
                echo "-----------------------------------------"
                echo
sleep 3s
                echo
                echo "Zainstalują się podstawowe programy do użytku" 
                echo "oraz zaawansowane oprogramowanie"
                echo 
                echo
sleep 3s

# Instalowanie podstawowych narzędzi linux
echo "Instalacja podstawowych narzędzi"
sleep2
apt update
apt upgrade -y
sudo apt install -y net-tools htp wget silversearcher-ag guake git curl nano apt-transport-https ca-certificates gnupg-agent software-properties-common lsb-release ssh gdebi mc

#
# Komenda na instalacje Gamebuntu
# bash <(curl -fsL https://github.com/AFK-OS/una/raw/main/install.sh); una install gamebuntu-bin
# 

#INSTALL DOCKER
echo "Instaluję Docker"
sleep 3s
# curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
# cat /etc/os-release
# read -p "INFORME O NONE DO UBUNTU_CODENAME DO TEXTO ACIMA: " codename
# sudo su << SUDO_COMANDS
# echo "deb [arch=amd64] https://download.docker.com/linux/ubuntu ${codename} stable" >> /etc/apt/sources.list
# SUDO_COMANDS
# sudo apt update -y
# sudo apt install -y docker-ce docker-ce-cli containerd.io
# sudo groupadd docker
# sudo usermod -aG docker $USER
# sudo systemctl enable docker

apt-get install -y ca-certificates curl gnupg lsb-release
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io

#INSTALL DOCKER-COMPOSE
echo "Installing Docker Compose"
sleep 2s
# sudo curl -L "https://github.com/docker/compose/releases/download/1.24.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/bin/docker-compose
# sudo chmod +x /usr/bin/docker-compose