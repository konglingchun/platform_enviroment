#!/bin/sh
#IP configration

DHCP=1
IP_PRE=192.168.101

#SET REMOTE IP
REMOTE_IP=$IP_PRE.120
#SET REMOTE PATH
REMOTE_PATH=/home/klc/work/

#SET NETWORK CARD
NETWORK_CARD=eth0
#SET LOCAL MOUNT PATH
MOUNT_PATH=/mnt

if [ $DHCP = "1" ];then
	udhcpc started -i $NETWORK_CARD
else
	#GATEWAY
	ROUTE_IP=$IP_PRE.1
	#SET BOARD IP
	LOCAL_IP=$IP_PRE.234
	#SETE MASK
	NET_MASK=255.255.255.0
	
	#DOWN NETWORK CARD
	ifconfig ${NETWORK_CARD} down
	#SET MAC ADDRESS
	ifconfig ${NETWORK_CARD} hw ether 12:25:34:21:65:54
	#SET LOCAL IP
	ifconfig ${NETWORK_CARD} ${LOCAL_IP}
	#SET MASK
	ifconfig ${NETWORK_CARD} netmask ${NET_MASK}
	#ADD GATEWAY
	route add default gw ${ROUTE_IP}
	#OPEN LOCAL LOOP
	ifconfig lo up
	#OPEN NETWORK CARD
	ifconfig ${NETWORK_CARD} up
fi

sleep 5
ping www.baidu.com -c 3
ping ${REMOTE_IP} -c 3

if [ ! -e "$MOUNT_PATH" ] ;then
    mkdir "$MOUNT_PATH" -p
fi

#MOUNT
umount ${MOUNT_PATH}
mount -o nolock,wsize=1024,rsize=1024,soft,retry=10,timeo=10 ${REMOTE_IP}:${REMOTE_PATH} ${MOUNT_PATH}

#ls ${MOUNT_PATH}