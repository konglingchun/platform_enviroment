#无线网卡的配置

#!/bin/sh
wifiname="sunpluseduwifi"
ifconfig wlan0 up
#加 入wifi
iwconfig wlan0 essid $wifiname

udhcpc -i wlan0 

#打开无线网卡
ifconfig wlan0 up 
#关闭无线网卡
ifconfig wlan0 down
#查看线网卡设备名
iwconfig 
#搜索无线网络
iwlist wlan0 scanning | grep ESSID 
#连接搜索到的无线网
iwconfig wlan0 essid "sunpluseduwifi" 
#输入密码 16进制
iwconfig wlan0 key 0123456789 
#输入密码ascII码
iwconfig wlan0 key s:12345 


