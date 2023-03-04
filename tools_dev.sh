#!/bin/bash

sudo apt update
sudo apt -y autoremove

sudo apt install -y ppa-purge
sudo apt install -y ubuntu-restricted-extras
#sudo apt install -y xfce4 xubuntu-desktop xrdp vnc4server
sudo apt install -y gnome-tweak-tool
sudo apt install -y lm-sensors hardinfo mkisofs smartmontools
sudo apt install -y filezilla
sudo apt install -y gparted
sudo apt install -y okular
sudo apt install -y kchmviewer
sudo apt install -y bc octave libgmp-dev libmpfr-dev
sudo apt install -y clipit
sudo apt install -y psmisc
sudo apt install -y gthumb webp
sudo apt install -y tree
sudo apt install -y iptux
sudo apt install -y meld patch
sudo apt install -y curl
sudo apt install -y wget
sudo apt install -y axel
sudo apt install -y gawk
sudo apt install -y unace p7zip-rar tar unar rar sharutils arj lunzip lzip lzop zip unzip bzip2 libz-dev
sudo apt install -y chromium-browser
#sudo snap install freemind

#Count Lines of Code
sudo apt install -y cloc

#indent命令是大多数Linux系统中都带有的工具,用来调整代码的排版
#indent -kr-i8 -ts8 -sob -l80 -ss -bs -psl <filename>
sudo apt install -y indent

sudo apt install -y manpages-posix manpages-posix-dev glibc-doc
sudo apt install -y inetutils-traceroute
sudo apt install -y net-tools
sudo apt install -y openssh-server openssh-client sshpass
sudo apt install -y silversearcher-ag
sudo apt install -y mtd-utils
sudo apt install -y u-boot-tools

#android 相关工具
sudo apt install -y android-sdk
sudo apt install -y android-tools-adb
sudo apt install -y android-tools-fastboot
sudo snap install scrcpy

#open jdk
sudo apt install -y openjdk-11-jdk
#sudo apt install -y openjdk-11-dbg
sudo apt install -y openjdk-11-jre-zero
sudo apt install -y openjdk-11-jre-lib
sudo apt install -y openjdk-11-jre
#sudo apt install -y openjdk-11-jre-headless
#sudo apt install -y openjdk-11-demo
#sudo apt install -y openjdk-11-doc

#git
sudo apt install -y git gitg gitk git-gui git-review git-core subversion
git config --global core.quotepath false

#compile env
sudo apt install -y perl
sudo apt install -y golang-go

sudo apt install -y cmake cmake-gui
sudo apt install -y autoconf automake libtool
sudo apt install -y gnupg gperf build-essential binutils gcc-multilib g++-multilib m4 yasm

sudo apt install -y lib32ncurses5-dev libncurses5-dev libncurses5-dev:i386 
sudo apt install -y libreadline-dev libreadline6-dev:i386
sudo apt install -y zlib1g-dev zlib1g-dev:i386
sudo apt install -y libx11-dev libx11-dev:i386
sudo apt install -y libc6-dev-i386 libc6-dev

sudo apt install -y x11proto-core-dev lib32z-dev ccache libgl1-mesa-dev 
sudo apt install -y dos2unix doxygen doxygen-gui asciidoc graphviz graphviz-doc tofrodos bison flex gettext cpio xsltproc autopoint
sudo apt install -y libxml2-utils libxml2-dev libxml-simple-perl libxml-parser-perl libswitch-perl 
sudo apt install -y dpkg-dev libsdl1.2-dev libesd0-dev
sudo apt install -y libssl-dev libcurl4-openssl-dev libp11-dev

#python
python_packages_install()
{

	sudo apt install -y python python-pip python-tk python-dev
	sudo apt install -y python3 python3-pip python3-tk python3-dev
	sudo apt install -y python3.8 python3-pip python3.8-dev

	sudo apt install -y python-virtualenv python3-virtualenv
	sudo apt install -y python-protobuf python3-protobuf protobuf-compiler
	sudo apt install -y python-markdown python3-markdown
}

python_version_init()
{
	index=1;

	for i in `ls /usr/bin/python[0-9].*[0-9]`
	do
		echo "sudo update-alternatives --install /usr/bin/python python $i $index"
		sudo update-alternatives --install /usr/bin/python python $i $index
		index=$(($index + 1));
	done
}

python_version_select()
{
	sudo update-alternatives --config python
	python -V
}

python_pip_install()
{
	python -m pip install --upgrade pip
	python -m pip install sphinx
	python -m pip install sphinx_rtd_theme
	python -m pip install scipy
	python -m pip install Beautifulsoup4
	python -m pip install opencv-python
	python -m pip install recommonmark
	python -m pip install pillow==8.0
	python -m pip install numpy==1.19.2
	python -m pip install matplotlib==3.3.2
	python -m pip install scipy==1.5.2
	python -m pip install serial
	python -m pip install opencv-python==3.4.2.16
	python -m pip install pyserial==3.5
	python -m pip install asserts
	python -m pip install mobly
}

#python_packages_install
#python_version_init
#python_version_select
#python_pip_install

#日志查看
sudo apt install -y lnav

