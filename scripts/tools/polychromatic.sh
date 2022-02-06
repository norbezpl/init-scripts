#!/bin/bash

if [ "$(dpkg-query -W --showformat='${db:Status-Status}' polychromatic 2>&1)" = installed ]; then
  echo 'Polychromatic is already installed.'
  sleep 3 && exit
fi

apt-get install -y software-properties-common
add-apt-repository -y universe
add-apt-repository -y multiverse

add-apt-repository -y ppa:polychromatic/stable
add-apt-repository -y ppa:openrazer/stable
apt-get install -y polychromatic openrazer-meta