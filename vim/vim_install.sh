sudo apt-get remove vim-common
sudo apt-get install -y vim vim-doc vim-scripts vim-gtk vim-runtime exuberant-ctags
sudo apt-get install -y curl
sudo apt-get install -y git

cd ~
rm .spf13-vim-3 .vim* -fr
cd -

tar xvf spf13-vim.tar.xz
cd spf13-vim
git pull
./bootstrap.sh
cd -
cp vimrc.local ~/.vimrc.local
