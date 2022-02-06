#!/bin/bash

# Gamebuntu 
# https://gitlab.com/rswat09/gamebuntu

# Skrypt aktywujący inne skrypty

cd /home/$USER/script-installation-programs/scripts
cd kernels
./lowlatency.sh
./xanmod.sh
cd ..
cd launchers
./heroic.sh
./lutris.sh
./minigalaxy.sh
./steam.sh
cd ..
cd social
./discord.sh
cd ..
./obs.sh
cd ..
cd tools