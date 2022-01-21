#/bin/bash

sudo add-apt-repository ppa:xdlailai/openyoudao
sudo apt-get update
sudo apt-get install openyoudao

sudo apt-get install ppa-purge
sudo ppa-purge ppa:xdlailai/openyoudao

