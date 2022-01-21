# ubuntu查看磁盘型号

### 安装

```shell
sudo apt install -y lsscsi
```

### 使用

```shell
lsscsi
```

### 例

```shell
lsscsi
[0:0:0:0]    disk    ATA      ST2000DM008-2FR1 VP02  /dev/sda 
[2:0:0:0]    disk    ATA      ST2000DM008-2FR1 VP02  /dev/sdb
```

```shell
ATA：SATA接口
```

## 主板设备信息

主板型号,主板支持最大[内存](https://so.csdn.net/so/search?q=内存&spm=1001.2101.3001.7020),单条内存的参数
 \#sudo dmidecode -t 2 //查看主板信息
 \#sudo dmidecode -t 16 |[grep](https://so.csdn.net/so/search?q=grep&spm=1001.2101.3001.7020) Maximum //查看主板支持最大内存
 \#sudo dmidecode -t memory //查看单条内存的参数


 硬盘品牌及其参数及其健康状态的检查
 \#sudo apt-get install sysstat 2秒刷新：sudo iostat -x 2
 \#sudo hdparm -i /dev/sda 


 服务器品牌,服务编号
 \#sudo dmidecode |grep 'Product Name' //查看服务器品牌，型号
 \#sudo dmidecode -s system-serial-number //查看服务编号


 网卡的型号,所使用的驱动版本
 \#sudo lspci | grep Eth //查看网卡型号
 \#sudo modinfo pcnet32 


 分辨系统进程和用户进程及其作用

\#sudo apt-get install htop

\#htop
