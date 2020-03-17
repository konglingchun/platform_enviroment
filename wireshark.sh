#1.安装wireshark
	sudo apt-get install wireshark
#2.在弹出的对话中选择“是”
	sudo dpkg-reconfigure wireshark-common
#3.将你的用户名添加到wireshark组中(配置Wireshark在非root用户下运行)
	sudo usermod -a -G wireshark $USER
#4.将dumpcap的所属组改为wireshark
	sudo chgrp wireshark /usr/bin/dumpcap
#5.改变dumpcap的权限，让wireshark组成员可以执行该程序
	sudo chmod 750 /usr/bin/dumpcap
#6.使用setcap获取权限
	sudo setcap cap_net_raw,cap_net_admin=eip /usr/bin/dumpcap
#7.验证改变
	sudo getcap /usr/bin/dumpcap

