sudo apt-get remove vim-common
sudo apt-get install vim vim-doc vim-scripts vim-runtime exuberant-ctags
sudo apt-get install curl
sudo apt-get install git

curl https://j.mp/spf13-vim3 -L > spf13-vim.sh && sh spf13-vim.sh
cp vimrc.local ~/.vimrc.local
