# brltty进程占用了串口

```shell
sudo dmesg | grep tty
[ 0.223411] printk: console [tty0] enabled
[ 44.099146] usb 1-1: ch341-uart converter now attached to ttyUSB0
[ 44.673749] usb 1-1: usbfs: interface 0 claimed by ch34x while ‘brltty’ sets config #1
[ 44.675063] ch341-uart ttyUSB0: ch341-uart converter now disconnected from ttyUSB0
```

# 驱动更新

Linux下的CH341驱动不适用于CH342，CH342的Linux厂商驱动

```shell
git clone https://github.com/WCHSoftGroup/ch343ser_linux.git
```

# 普通用户权访问串口

文件目录：/etc/udev/rules.d/70-ttyusb.rules

```shell
KERNEL=="ttyUSB[0-9]*", MODE="0666"
KERNEL=="ttyACM[0-9]*", MODE="0666"
KERNEL=="ttyCH343USB[0-9]*", MODE="0666"
```
