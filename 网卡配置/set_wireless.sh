#��������������

#!/bin/sh
wifiname="sunpluseduwifi"
ifconfig wlan0 up
#�� ��wifi
iwconfig wlan0 essid $wifiname

udhcpc -i wlan0 

#����������
ifconfig wlan0 up 
#�ر���������
ifconfig wlan0 down
#�鿴�������豸��
iwconfig 
#������������
iwlist wlan0 scanning | grep ESSID 
#������������������
iwconfig wlan0 essid "sunpluseduwifi" 
#�������� 16����
iwconfig wlan0 key 0123456789 
#��������ascII��
iwconfig wlan0 key s:12345 


