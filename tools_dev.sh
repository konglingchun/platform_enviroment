#!/bin/bash

sudo apt update
sudo apt -y autoremove

sudo apt install -y ppa-purge
sudo apt install -y ubuntu-restricted-extras
sudo ubuntu-drivers devices
sudo ubuntu-drivers autoinstall
#sudo apt install -y xfce4 xubuntu-desktop xrdp vnc4server
sudo apt install -y gnome-tweaks
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
sudo apt install -y htop
sudo apt install -y stress stress-ng
sudo apt install -y fio
sudo apt install -y iptux
sudo apt install -y meld patch
sudo apt install -y curl
sudo apt install -y wget
sudo apt install -y axel
sudo apt install -y gawk
sudo apt install -y unace p7zip-rar tar unar rar sharutils arj lunzip lzip lzop zip unzip bzip2 libz-dev
sudo apt install -y chromium-browser
#sudo snap install freemind

#git
sudo apt install -y git gitg gitk git-gui git-review git-core subversion
git config --global core.quotepath false

#日志查看
sudo apt install -y lnav

#Count Lines of Code
sudo apt install -y cloc

#indent命令是大多数Linux系统中都带有的工具,用来调整代码的排版
#indent -kr-i8 -ts8 -sob -l80 -ss -bs -psl <filename>
sudo apt install -y indent

sudo apt install -y manpages-posix manpages-posix-dev glibc-doc
sudo apt install -y inetutils-traceroute
sudo apt install -y net-tools
sudo apt install -y openssh-server openssh-client sshpass
sudo apt install -y fd-find
sudo ln -s /usr/lib/cargo/bin/fd /usr/bin/fd
sudo apt install -y silversearcher-ag
sudo apt install -y mtd-utils
#for uboot
sudo apt install -y u-boot-tools

#for menuconfig command
sudo apt install -y lib32ncurses5-dev libncurses5-dev libncurses5-dev:i386 libncursesw5-dev

#for kernel
sudo apt install device-tree-compiler ruby lzop libyaml-dev

#compile env
sudo apt install -y perl
sudo apt install -y golang-go

sudo apt install -y scons
sudo apt install -y cmake cmake-gui extra-cmake-modules
sudo apt install -y autoconf automake libtool
sudo apt install -y gcc-arm-none-eabi
sudo apt install -y gnupg gperf build-essential binutils libnuma-dev gcc-multilib g++-multilib m4 yasm

sudo apt install -y libreadline-dev libreadline6-dev:i386
sudo apt install -y zlib1g-dev zlib1g-dev:i386
sudo apt install -y libx11-dev libx11-dev:i386
sudo apt install -y libc6-dev-i386 libc6-dev

sudo apt install -y x11proto-core-dev lib32z-dev ccache libgl1-mesa-dev 
sudo apt install -y dos2unix doxygen doxygen-gui asciidoc graphviz graphviz-doc tofrodos bison flex gettext cpio xsltproc autopoint
sudo apt install -y libxml2-utils libxml2-dev libxml-simple-perl libxml-parser-perl libswitch-perl 
sudo apt install -y dpkg-dev libsdl1.2-dev
sudo apt install -y libssl-dev libcurl4-openssl-dev libp11-dev

#android 相关工具
sudo apt install -y android-sdk
sudo apt install -y android-tools-adb
sudo apt install -y android-tools-fastboot
sudo snap install scrcpy

#open jdk
openjdk_ver=openjdk-18
sudo apt install -y ${openjdk_ver}-jdk
#sudo apt install -y ${openjdk_ver}-dbg
sudo apt install -y ${openjdk_ver}-jre-zero
sudo apt install -y ${openjdk_ver}-jre-lib
sudo apt install -y ${openjdk_ver}-jre
#sudo apt install -y ${openjdk_ver}-jre-headless
#sudo apt install -y ${openjdk_ver}-demo
#sudo apt install -y ${openjdk_ver}-doc

