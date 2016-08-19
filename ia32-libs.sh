sudo dpkg --add-architecture i386
echo "deb http://old-releases.ubuntu.com/ubuntu/ raring main restricted universe multiverse" |\
		sudo tee -a /etc/apt/sources.list.d/ia32-libs-raring.list
sudo apt-get update
sudo apt-get install ia32-libs
sudo rm -rf /etc/apt/sources.list.d/ia32-libs-raring.list
