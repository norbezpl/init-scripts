#!/bin/bash

if [ -f /snap/bin/discord ]; then
  echo 'Discord is already installed.'
  sleep 3 && exit
fi

apt-get install -y snapd
snap install discord