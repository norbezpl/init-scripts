#!/bin/bash

# Developer tools install script 

sudo apt update 
sudo apt upgrade -y 

echo "================"
echo "Installing GIT"
echo "================"
sudo apt install git -y 
echo "================"
echo "Installing flatpak"
echo "================"
sudo apt install flatpak -y
# Adding python3.9 repo
echo "================"
echo "adding python3.9 repo"
echo "================"
add-apt-repository ppa:deadsnakes/ppa -y

# TODO | IDEA
# git clone --recursive https://github.com/norbezpl/init-scripts.git
# mkdir /etc/scripts
# cp /init-scripts/auto-update/update.sh /etc/scripts

# konfiguracja git
echo "================"
read -p "Wpisz adres e-mail, aby skonfigurować zatwierdzenia git (ten sam, który jest używany na Twoim koncie): " git_email
echo "================"
read -p "Wpisz nazwę, która pojawi się w zatwierdzeniach: " git_name
git config --global user.email "$git_email"
git config --global user.name "$git_name"

sudo apt install -y ubuntu-restricted-extras

sudo apt-get install -y gdebi 
sudo apt-get install -y mc 
sudo apt-get install -y wget 
sudo apt-get install -y gpg 
sudo apt-get install -y apt-transport-https 
sudo apt-get install -y snapd 
sudo apt-get install -y net-tools 
sudo apt-get install -y ssh
sudo apt-get install -y ufw 
sudo apt-get install -y software-properties-common
sudo apt-get install -y bat

# add VS CODE repo
echo "================"
echo "Adding vscode repos"
echo "================"
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg
# add NALA frontend terminal apt alternative
echo "================"
echo "Adding Nala repos"
echo "================"
echo "deb [arch=amd64,arm64,armhf] http://deb.volian.org/volian/ scar main" | sudo tee /etc/apt/sources.list.d/volian-archive-scar-unstable.list
wget -qO - https://deb.volian.org/volian/scar.key | sudo tee /etc/apt/trusted.gpg.d/volian-archive-scar-unstable.gpg > /dev/null

sudo apt update

echo "================"
echo "Installing libpython3.9"
echo "================"
sudo apt install python3.9 python3.9-venv python3.9-dev -y
echo "================"
echo "Installing VScode"
echo "================"
sudo apt install -y code
echo "================"
echo "Installing timeshift"
echo "================"
sudo apt install -y timeshift
echo "================"
echo "Installing nala" 
echo "================"
sudo apt install -y nala


sudo apt-get install -y libc6:i386 libncurses5:i386 libstdc++6:i386 lib32z1 libbz2-1.0:i386 # Android studio uses this

# Instalacja google chrome
echo "================"
echo "Installing Chrome"
echo "================"
sleep 2s
mkdir /etc/down
cd /etc/down
wget -O chrome.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i chrome.deb
sudo rm -r /etc/down/chrome.deb

echo "================"
echo "Installing flatpak apps"
echo "================"
flatpak remote-add --user --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
# apps from flatpak
flatpak install flathub com.spotify.Client -y 
flatpak install flathub com.discordapp.Discord -y
flatpak install flathub com.github.micahflee.torbrowser-launcher -y 
flatpak install flathub org.telegram.desktop -y 
flatpak install flathub com.github.alainm23.planner -y
flatpak install flathub net.devolutions.RDM -y # propositon
flatpak install flathub com.google.AndroidStudio -y
flatpak install flathub app.resp.RESP -y
flatpak install flathub org.remmina.Remmina -y
#flatpak install flathub org.gnome.Boxes -y
flatpak install flathub com.valvesoftware.Steam -y

# install opencl drivers
echo "================"
echo "Installing opencl drivers"
echo "================"
cd ~
mkdir neo
cd neo
wget https://github.com/intel/compute-runtime/releases/download/22.14.22890/intel-gmmlib_22.0.2_amd64.deb
wget https://github.com/intel/intel-graphics-compiler/releases/download/igc-1.0.10840/intel-igc-core_1.0.10840_amd64.deb
wget https://github.com/intel/intel-graphics-compiler/releases/download/igc-1.0.10840/intel-igc-opencl_1.0.10840_amd64.deb
wget https://github.com/intel/compute-runtime/releases/download/22.14.22890/intel-opencl-icd-dbgsym_22.14.22890_amd64.ddeb
wget https://github.com/intel/compute-runtime/releases/download/22.14.22890/intel-opencl-icd_22.14.22890_amd64.deb
wget https://github.com/intel/compute-runtime/releases/download/22.14.22890/intel-level-zero-gpu-dbgsym_1.3.22890_amd64.ddeb
wget https://github.com/intel/compute-runtime/releases/download/22.14.22890/intel-level-zero-gpu_1.3.22890_amd64.deb
sudo dpkg -i *.deb
rm -f *.deb
rm -f *.ddeb

sudo apt update
sudo apt upgrade -y

sudo apt autoremove -y

# TODO

# You use laptop or PC?
# PC > 
# Laptop > sudo apt install -y tlp tlp-rdw

# Do you playing games? 
#YES> 
#NO> 