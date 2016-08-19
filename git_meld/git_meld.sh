#!/bin/bash

sudo apt-get install git gnupg gitk
sudo apt-get install meld

mkdir ~/.git_meld
rm ~/.git_meld/git_meld.sh
echo "#!/bin/bash" > ~/.git_meld/git_meld.sh
echo "meld $2 $5" >> ~/.git_meld/git_meld.sh
chmod +x ~/.git_meld/git_meld.sh

git config --global diff.external ~/.git_meld/git_meld.sh
