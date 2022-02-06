#!/bin/bash

if [ "$(dpkg-query -W --showformat='${db:Status-Status}' steam 2>&1)" = installed ]; then
  echo 'Steam is already installed.'
  sleep 3 && exit
fi

apt-get install -y software-properties-common
add-apt-repository -y universe
add-apt-repository -y multiverse
apt-get install -y steam