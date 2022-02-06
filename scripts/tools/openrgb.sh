#!/bin/bash

if [ "$(dpkg-query -W --showformat='${db:Status-Status}' openrgb 2>&1)" = installed ]; then
  echo 'OpenRGB is already installed.'
  sleep 3 && exit
fi

apt-get install -y software-properties-common lsb-release
add-apt-repository -y universe
add-apt-repository -y multiverse
cd /tmp
[[ "$(lsb_release -r)" == *'20.04'* ]] && \
  wget -qO openrgb.deb https://openrgb.org/releases/release_0.7/openrgb_0.7_amd64_buster_6128731.deb \
  || wget -qO openrgb.deb https://openrgb.org/releases/release_0.7/openrgb_0.7_amd64_bullseye_6128731.deb
apt-get install -y ./openrgb.deb