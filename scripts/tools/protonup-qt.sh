#!/bin/bash

if [ -d /var/lib/flatpak/app/net.davidotek.pupgui2 ]; then
  echo 'ProtonUp-Qt is already installed.'
  sleep 3 && exit
fi

apt-get install -y flatpak
flatpak remote-add --system --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install -y --noninteractive net.davidotek.pupgui2