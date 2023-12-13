#!/bin/bash

sudo apt install -y zsh
sudo apt install -y git
sudo apt install -y curl

#sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

cp ~/.zshrc ~/.zshrc.orig
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
chsh -s /bin/zsh

