#!/bin/bash

# Wersja dla użytku dla @norbezpl

# Instalowanie podstawowych narzędzi do linuxa desktop
sudo apt update
sudo apt upgrade -y
sudo add-apt-repository -y ppa:teejee2008/ppa
sudo add-apt-repository -y ppa:cappelikan/ppa
apt update
sudo apt install -y libgee-0.8-dev libjson-glib-dev libvte-2.91-dev valac aria2 lsb-release aptitude snapd ukuu net-tools ssh gdebi software-properties-common libgconf2-dev libpolkit-gobject-1-dev libswitchboard-2.0-dev
sudo apt install -y snapd net-tools ssh mainline


# Add official Wine repository
echo 'deb https://dl.winehq.org/wine-builds/ubuntu/ $(lsb_release -sc) main' | sudo tee /etc/apt/sources.list.d/winehq.list    
wget -qO - https://dl.winehq.org/wine-builds/winehq.key | sudo apt-key --keyring /etc/apt/trusted.gpg.d/winehq.key add -
sudo apt update

# Elementary

apt update
sudo apt install snapd ukuu net-tools ssh gdebi software-properties-common libgconf2-dev libpolkit-gobject-1-dev libswitchboard-2.0-dev

# Instalacja google chrome
echo "Installing Chrome" # nie działa
sleep 2s
mkdir /etc/down
cd /etc/down
wget -O chrome.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i chrome.deb
sudo rm -r /etc/down/chrome.deb

# Instalowanie golang
sudo add-apt-repository -y ppa:longsleep/golang-backports
sudo apt update
apt install -y golang-go

# Noise torch do dźwięku
git clone https://github.com/lawl/NoiseTorch # Clone the repository
 cd NoiseTorch # cd into the cloned repository
 make # build it

# Mainline
mkdir /etc/test
cd /etc/test
git clone https://github.com/bkw777/mainline.git
cd mainline
make
sudo make install

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


