#!/bin/bash

if [ -f "$1/.local/bin/noisetorch" ]; then
  echo 'NoiseTorch is already installed.'
  sleep 3 && exit
fi

apt-get install -y software-properties-common
add-apt-repository -y universe
add-apt-repository -y multiverse

cd "$(mktemp -d)" && wget -qO - https://api.github.com/repos/lawl/NoiseTorch/releases/latest \
    | grep '/NoiseTorch_x64.tgz' \
    | cut -d : -f 2,3 \
    | tr -d \" \
    | wget -qi -
tar -C "$1" -xzf NoiseTorch_x64.tgz && gtk-update-icon-cache
sudo setcap 'CAP_SYS_RESOURCE=+ep' "$1/.local/bin/noisetorch"