#!/bin/bash

sudo bash -c 'echo 1 > /proc/sys/net/ipv4/ip_forward'   # 打开ip转发
sudo iptables -F
sudo iptables -P INPUT ACCEPT
sudo iptables -P FORWARD ACCEPT
sudo iptables -t nat -A POSTROUTING -o wlp0s20f3 -j MASQUERADE     #（wlp0s20f3 为A主机接外网的网卡）
