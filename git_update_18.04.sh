#升级git
sudo apt-get install software-properties-common 
sudo apt-add-repository ppa:git-core/ppa -y
sudo apt-get update
sudo apt-get install git
#初始化lfs组件, 为日后迁移lfs兼容
sudo apt-get install git-lfs

