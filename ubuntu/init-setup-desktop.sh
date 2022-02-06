#!/bin/bash

# Wersja dla użytku dla @norbezpl

# Instalowanie podstawowych narzędzi do linuxa desktop
sudo apt update
sudo apt upgrade -y
sudo add-apt-repository ppa:teejee2008/ppa
sudo add-apt-repository ppa:philip.scott/elementary-tweaks
add-apt-repository -y ppa:philip.scott/pantheon-tweaks

apt update
sudo apt install elementary-tweaks
sudo apt install snapd ukuu net-tools ssh gdebi software-properties-common libgconf2-dev libpolkit-gobject-1-dev libswitchboard-2.0-dev elementary-sdk pantheon-tweaks

# Instalacja google chrome
echo "Installing Chrome" # nie działa
sleep 2s
cd ~/Downloads/
wget -O chrome.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i chrome.deb
sudo rm -r ~/Downloads/chrome.deb

# Instalowanie golang
sudo add-apt-repository ppa:longsleep/golang-backports
sudo apt update
apt install golang-go

# Noise torch do dźwięku
git clone https://github.com/lawl/NoiseTorch # Clone the repository
 cd NoiseTorch # cd into the cloned repository
 make # build it



# Instalacja programów ze snapstore
sudo snap install snap-store spotify thunderbird cacher telegram-desktop drawio bitwarden krita
sudo snap install code --classic
snap install android-studio --classic
snap install gitkraken --classic
snap install discord 

# sprawdzić czy linia 8 i 9 działa z -y


# sudo apt install libgconf2-dev libpolkit-gobject-1-dev libswitchboard-2.0-dev elementary-sdk
# meson build --prefix=/usr
# cd build
# ninja

# sudo ninja install
# io.elementary.switchboard


