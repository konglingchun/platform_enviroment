sudo add-apt-repository ppa:morphis/anbox-support
sudo apt update
sudo apt install linux-headers-generic anbox-modules-dkms
sudo modprobe ashmem_linux
sudo modprobe binder_linux
sudo apt install snap
sudo snap install --devmode --beta anbox
sudo apt install ppa-purge
sudo ppa-purge ppa:morphis/anbox-support
sudo apt install android-tools-adb

