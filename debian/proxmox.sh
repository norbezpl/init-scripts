#!/bin/bash

# Instalacja proxmox

echo "deb http://download.proxmox.com/debian/pve bullseye pve-no-subscription" | tee /etc/apt/sources.list.d/pve-install-repo.list
wget https://enterprise.proxmox.com/debian/proxmox-release-bullseye.gpg -O /etc/apt/trusted.gpg.d/proxmox-release-bullseye.gpg 
mv proxmox-release-bullseye.gpg /etc/apt/trusted.gpg.d/proxmox-release-bullseye.gpg
chmod +r /etc/apt/trusted.gpg.d/proxmox-release-bullseye.gpg
apt update
apt full-upgrade -y
echo "deb http://download.proxmox.com/debian/ceph-pacific bullseye main" | tee /etc/apt/sources.list.d/ceph.list
apt update
apt install proxmox-ve postfix open-iscsi -y
apt remove os-prober -y
systemctl reboot