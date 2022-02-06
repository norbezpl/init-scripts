#!/bin/bash

if [ "$(dpkg-query -W --showformat='${db:Status-Status}' piper 2>&1)" = installed ]; then
  echo 'Piper is already installed.'
  sleep 3 && exit
fi

apt-get install -y software-properties-common
add-apt-repository -y universe
add-apt-repository -y multiverse
apt-get install -y piper