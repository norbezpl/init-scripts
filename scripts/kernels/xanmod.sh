#!/bin/bash

if [ "$(dpkg-query -W --showformat='${db:Status-Status}' linux-xanmod 2>&1)" = installed ]; then
  echo 'The xanmod kernel is already installed.'
  sleep 3 && exit
fi

apt-get install -y software-properties-common
add-apt-repository -y universe
add-apt-repository -y multiverse

echo 'deb http://deb.xanmod.org releases main' > /etc/apt/sources.list.d/xanmod-kernel.list 
wget -qO - https://dl.xanmod.org/gpg.key | apt-key --keyring /etc/apt/trusted.gpg.d/xanmod-kernel.gpg add -
apt-get update && apt-get install -y linux-xanmod