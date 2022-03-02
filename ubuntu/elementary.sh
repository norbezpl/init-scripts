#!/bin/bash


sudo add-apt-repository -y ppa:philip.scott/elementary-tweaks
sudo add-apt-repository -y ppa:philip.scott/pantheon-tweaks
sudo add-apt-repository -y ppa:teejee2008/ppa
sudo add-apt-repository -y ppa:cappelikan/ppa
apt update
sudo apt install -y libgee-0.8-dev libjson-glib-dev libvte-2.91-dev valac aria2 lsb-release aptitude
sudo apt install -y snapd net-tools ssh mainline
apt update
sudo apt install -y elementary-tweaks
sudo apt install -y snapd ukuu net-tools ssh gdebi software-properties-common libgconf2-dev libpolkit-gobject-1-dev libswitchboard-2.0-dev elementary-sdk pantheon-tweaks

# Mainline
mkdir /etc/test
cd /etc/test
git clone https://github.com/bkw777/mainline.git
cd mainline
make
sudo make install# Mainline
mkdir /etc/test
cd /etc/test
git clone https://github.com/bkw777/mainline.git
cd mainline
make
sudo make install