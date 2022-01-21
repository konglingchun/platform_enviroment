## 驱动配置

### lsusb查看驱动

```shell
lsusb

Bus 001 Device 060: ID 0e8d:0003 MediaTek Inc. MT6227 phone
其中，VID:0e8d PID:0003
```

### 配置adb驱动

```shell
sudo vi /etc/udev/rules.d/99-android.rules
SUBSYSTEM=="usb", SYSFS{idVendor}="0e8d", MODE="0666"
SUBSYSTEM=="usb", ATTR{idVendor}=="0e8d", ATTR{idProduct}="0003", MODE="0666"
```

### 配置flashtools驱动

```shell
sudo vi /etc/udev/rules.d/99-MTKinc.rules
SUBSYSTEM=="usb", SYSFS{idVendor}=="0e8d", MODE="0666"
SUBSYSTEM=="usb", ATTR{idVendor}="0e8d", ATTR{idProduct}="0003", SYMLINK+="android_adb"
KERNEL=="ttyACM*", MODE="0666"
```

### 权限

```shell
sudo chmod a+rx /etc/udev/rules.d/99-android.rules
sudo chmod a+rx /etc/udev/rules.d/99-MTKinc.rules
```

modemmanager对MTK 的Flashtool 工具支持不完全，造成烧写timeout，卸载这个包 

```shell
sudo apt-get remove modemmanager
```

### 驱动重新加载

```shell
sudo /etc/init.d/udev restart 
```

