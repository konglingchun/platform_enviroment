#shut down security boot
#set mode of graphic device from discrete graphic to dynamic graphics
sudo apt-get purge nvidia
ubuntu-drivers devices
sudo apt-get install nvidia-driver-470
sudo reboot
nvidia-smi
sudo nvidia-settings

