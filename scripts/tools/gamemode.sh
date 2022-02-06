#!/bin/bash

if [ "$(dpkg-query -W --showformat='${db:Status-Status}' gamemode 2>&1)" = installed ]; then
  echo 'GameMode is already installed.'
  sleep 3 && exit
fi

apt-get install -y software-properties-common
add-apt-repository -y universe
add-apt-repository -y multiverse

SHELL_EXT="$(which gnome-shell &>/dev/null && echo gnome-shell-extension-gamemode)"
apt-get install -y gamemode $SHELL_EXT