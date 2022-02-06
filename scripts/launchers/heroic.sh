#!/bin/bash

if [ "$(dpkg-query -W --showformat='${db:Status-Status}' heroic 2>&1)" = installed ]; then
  echo 'Heroic Games Launcher is already installed.'
  sleep 3 && exit
fi

apt-get install -y software-properties-common
add-apt-repository -y universe
add-apt-repository -y multiverse
apt-get install -y jq
cd "$(mktemp -d)" && curl -s https://api.github.com/repos/Heroic-Games-Launcher/HeroicGamesLauncher/releases/latest \
  | jq -r ".assets[] | select(.name | contains(\".deb\")) | .browser_download_url" \
  | wget -i -
apt-get install -y ./heroic_*.deb