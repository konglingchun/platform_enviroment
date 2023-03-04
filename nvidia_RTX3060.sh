#查询显卡型号的方法:
lspci | grep -i vga
lshw -numeric -C display

#参考网页：https://blog.csdn.net/u011622434/article/details/96430580
#参考网页：https://blog.csdn.net/maizousidemao/article/details/88821949

#shut down security boot
#set mode of graphic device from discrete graphic to dynamic graphics
sudo apt-get purge nvidia
#查看显卡硬件型号
ubuntu-drivers devices
#显示具体显卡型号
nvidia-smi
#自动安装推荐驱动
#sudo ubuntu-drivers autoinstall
sudo apt-get install nvidia-driver-470

sudo reboot
sudo nvidia-settings

