sudo apt-get remove vim-common
sudo apt-get install -y vim vim-doc vim-scripts vim-runtime exuberant-ctags
sudo apt-get install -y curl
sudo apt-get install -y git

tar xvf spf13-vim.tar.xz
cd spf13-vim
git pull
./bootstrap.sh
cd -
cp vimrc.local ~/.vimrc.local
