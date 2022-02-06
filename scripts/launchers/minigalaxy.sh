#!/bin/bash

if [ "$(dpkg-query -W --showformat='${db:Status-Status}' minigalaxy 2>&1)" = installed ]; then
  echo 'Minigalaxy is already installed.'
  sleep 3 && exit
fi

apt-get install -y software-properties-common
add-apt-repository -y universe
add-apt-repository -y multiverse
apt-get install -y jq
cd "$(mktemp -d)" && wget -qO- 'https://api.github.com/repos/sharkwouter/minigalaxy/releases/latest' \
  | grep '"browser_download_url"' \
  | grep '.deb' \
  | cut -f2,3 -d':' \
  | tr -d '"' \
  | xargs wget && apt-get install -y ./minigalaxy_*.deb