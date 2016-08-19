#!/bin/bash

sudo add-apt-repository ppa:ubuntu-wine/ppa
sudo apt-get update
sudo apt-get install wine1.6 winetricks

sudo apt-get install ppa-purge
sudo ppa-purge ppa:ubuntu-wine/ppa

#wine remove software
#wine uninstaller
