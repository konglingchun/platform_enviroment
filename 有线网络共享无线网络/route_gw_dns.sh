#!/bin/sh

# 添加路由， 设置网关
route add -net 0.0.0.0/0 gw 192.168.0.105

# 设置域名服务器
chmod 666 /etc/resolv.conf # /etc/resolv.conf 用于设置DNS服务器的IP地址及DNS域名，还包含了主机的域名搜索顺序
echo "nameserver 114.114.114.114" >> /etc/resolv.conf
