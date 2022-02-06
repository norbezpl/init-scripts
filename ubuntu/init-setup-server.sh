#!/bin/bash

#Wersja dla użytku dla @norbezpl

# Instalowanie podstawowych narzędzi do funkcjonowania serwera

apt update
apt upgrade -y
apt install net-tools htop ssh gdebi mc

# Konfiguracja git
read -p "Wpisz adres e-mail, aby skonfigurować zatwierdzenia git (ten sam, który jest używany na Twoim koncie): " git_email
read -p "Wpisz nazwę, która pojawi się w zatwierdzeniach: " git_name
git config --global user.email "$git_email"
git config --global user.name "$git_name"

