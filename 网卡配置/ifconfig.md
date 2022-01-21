## ifconfig 

# can

## 1. 设置波特率
```shell
sudo ip link set can0 down # 不使能，再设置波特率，否则会出现设备忙
sudo ip link set can0 type can bitrate 500000 # 波特率500kb/s
ip -details link show can0 # 打印can0详细，查看修改
```

## 2. 查看接收的CAN帧
```shell
sudo ip link set can0 up # 使能can
candump can0 # 接收can0发送的帧
```

# 网络设置

````shell
#!/bin/sh
#IP configration

DHCP=1
AUTO_MOUNT=1
PING_TEST=1

#ETHERNET DEVICE NAME
ETHERNET_DEVICE=eth0
#ETHERNET_DEVICE=wlan0

#IP PREFIX
IP_PRE=192.168.0

#SERVER IP
SERVER_IP=$IP_PRE.108
#LOCAL IP
LOCAL_IP=$IP_PRE.120

#GATEWAY
ROUTE_IP=$IP_PRE.1
#DNS
DNS_SERVER=$IP_PRE.1
#MASK
NET_MASK=255.255.255.0
#MAC
ETH_MAC=F8:EC:BD:21:65:54

#NFS_SERVER_PATH
NFS_SERVER_PATH=/home/walter/work/
#LOCAL MOUNT PATH
NFS_LOCAL_MOUNT_PATH=/mnt

ethernet_misc()
{
	echo "=============> ethernet_misc start <============="
	echo "=============> DOWN ETHERNET ${ETHERNET_DEVICE}"
	ifconfig ${ETHERNET_DEVICE} down
	echo "=============> UP ETHERNET ${ETHERNET_DEVICE}"
	ifconfig ${ETHERNET_DEVICE} up
	usleep 500000
	echo "=============> SET MAC ADDRESS"
	ifconfig ${ETHERNET_DEVICE} hw ether ${ETH_MAC}
	echo "=============> ethernet_misc end <============="
}

ethernet_ip_mask_gateway_dns()
{
	echo "=============> ethernet_ip_mask_gateway_dns start <============="
	echo "=============> OPEN LOCAL LOOP"
	ifconfig lo up
	echo "=============> SET LOCAL IP ${LOCAL_IP}"
	ifconfig ${ETHERNET_DEVICE} ${LOCAL_IP}
	echo "=============> SET NET_MASK ${NET_MASK}"
	ifconfig ${ETHERNET_DEVICE} netmask ${NET_MASK}
	echo "=============> SET GATEWAY ${ROUTE_IP}"
	route add default gw ${ROUTE_IP}
	echo "=============> SET DNS ${DNS_SERVER}"
	echo "nameserver ${DNS_SERVER}" >> /etc/resolv.conf
	echo "=============> ethernet_ip_mask_gateway_dns end <============="
}

if [ $DHCP = "1" ];then
	udhcpc started -i $ETHERNET_DEVICE
else
	#ethernet_misc
	ethernet_ip_mask_gateway_dns
fi

if [ $PING_TEST = "1" ];then
	echo "=============> sleep 3 s to wait ethernet ok"
	sleep 3
#	ping ${SERVER_IP} -c 3
	ping www.baidu.com -c 3
fi

if [ $AUTO_MOUNT = "1" ];then
	if [ ! -e "$NFS_LOCAL_MOUNT_PATH" ] ;then
    	mkdir "$NFS_LOCAL_MOUNT_PATH" -p
	fi
	umount ${NFS_LOCAL_MOUNT_PATH}
	mount -o nolock,wsize=1024,rsize=1024,soft,retry=10,timeo=10 ${SERVER_IP}:${NFS_SERVER_PATH} ${NFS_LOCAL_MOUNT_PATH}
	#ls ${NFS_LOCAL_MOUNT_PATH}
fi

````

