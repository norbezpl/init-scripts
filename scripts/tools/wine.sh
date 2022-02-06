#!/bin/bash

if [ "$(dpkg-query -W --showformat='${db:Status-Status}' wine 2>&1)" = installed ]; then
  echo 'Wine is already installed.'
  sleep 3 && exit
fi

apt-get install -y software-properties-common
add-apt-repository -y universe
add-apt-repository -y multiverse
apt-get install -y wine wine64 wine-binfmt winetricks