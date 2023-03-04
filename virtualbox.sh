#!/bin/bash

#关闭Secure boot

#ref:https://linuxiac.com/how-to-install-virtualbox-on-ubuntu-22-04/

#1. Import VirtualBox’s Repo GPG Key
wget -O- https://www.virtualbox.org/download/oracle_vbox_2016.asc | sudo gpg --dearmor --yes --output /usr/share/keyrings/oracle-virtualbox-2016.gpg

#2. Add VirtualBox Repo to Ubuntu 22.04
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/oracle-virtualbox-2016.gpg] http://download.virtualbox.org/virtualbox/debian $(lsb_release -cs) contrib" | sudo tee /etc/apt/sources.list.d/virtualbox.list

#3. Run System Update
sudo apt update

#4. Install VirtualBox 7 on Ubuntu 22.04
sudo apt install virtualbox-7.0

#5. Install VirtualBox Extension Pack
#verify the exact version of the installed locally VirtualBox, you can use vboxmanage, a build-in VirtualBox’s command:
vboxmanage -v | cut -dr -f1

VirtualBox_VERSION=`vboxmanage -v | cut -dr -f1`
wget "https://download.virtualbox.org/virtualbox/${VirtualBox_VERSION}/Oracle_VM_VirtualBox_Extension_Pack-${VirtualBox_VERSION}.vbox-extpack"
sudo vboxmanage extpack install "Oracle_VM_VirtualBox_Extension_Pack-${VirtualBox_VERSION}.vbox-extpack"

#verify installed VirtualBox’s extension pack version
vboxmanage list extpacks

#6. Add User to vboxusers Group
sudo usermod -a -G vboxusers $USER
groups $USER

#7. Running VirtualBox on Ubuntu 22.04
