#!/bin/bash

if [ "$(dpkg-query -W --showformat='${db:Status-Status}' goverlay 2>&1)" = installed ]; then
  echo 'GOverlay is already installed.'
  sleep 3 && exit
fi

apt-get install -y software-properties-common
add-apt-repository -y universe
add-apt-repository -y multiverse
add-apt-repository -y ppa:flexiondotorg/mangohud
apt-get install -y goverlay