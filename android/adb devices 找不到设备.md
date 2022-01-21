### lsusb查看驱动

```shell
lsusb

Bus 003 Device 011: ID 05c6:9091 Qualcomm, Inc. 
其中，VID:05c6 PID:9091
```

### 配置adb驱动

```shell
sudo vi /etc/udev/rules.d/99-android.rules
SUBSYSTEM=="usb", SYSFS{idVendor}="0e8d", MODE="0666"
SUBSYSTEM=="usb", ATTR{idVendor}=="0e8d", ATTR{idProduct}="0003", MODE="0666"
```

```shell
sudo udevadm control --reload-rules
或
sudo service udev restart
```

### 重启adb

```shell
adb kill-server
adb start-server
adb devices 
```

### 如果还是不行的话

```shell
vi ~/.android/adb_usb.ini
把设备的vendor id写进去
例:
0X05c6
```
