#!/bin/bash
echo ""
echo "*** NordRoll Setup Script v1 ***"
echo "Creating NordRoll Directory..."
mkdir ~/.config/nordroll
cd ~/.config/nordroll
echo "Copying from Github..."
curl -O https://raw.githubusercontent.com/jroderiko/vlab/main/nordroll/nordg.ls
curl -O https://raw.githubusercontent.com/jroderiko/vlab/main/nordroll/nordl.ls
curl -O https://raw.githubusercontent.com/jroderiko/vlab/main/nordroll/nroll.sh
echo "Creating alias..."
echo "alias nordrl='~/.config/nordroll/nroll.sh' " >> ~/.bashrc
echo "Make script executable..."
sudo chmod +x nroll.sh
echo "DONE"
