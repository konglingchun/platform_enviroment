#!/bin/bash

sudo apt-get remove vim-common
sudo apt-get install -y vim vim-doc vim-scripts vim-gtk vim-runtime exuberant-ctags
sudo apt-get install -y curl
sudo apt-get install -y git

rm ~/.spf13-vim-3 ~/.vim* -fr

git clone https://github.com/spf13/spf13-vim.git ~/.spf13-vim-3
cd ~/.spf13-vim-3
./bootstrap.sh
cd -

cp vimrc.local ~/.vimrc.local

