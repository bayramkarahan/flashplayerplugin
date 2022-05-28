#!/bin/bash
sudo apt-get remove eta-flash-installer -y
sudo dpkg --force-all -i flashplayer.deb
exit 0