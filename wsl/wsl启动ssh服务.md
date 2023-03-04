# wsl启动ssh服务

## 安装

```shell
sudo apt-get remove openssh-server openssh-client
sudo rm -fr /etc/apt/apt.conf.d/20snapd.conf
sudo apt-get install openssh-server openssh-client
```

## **配置**

sudo vim /etc/ssh/sshd_config

```shell
# 端口
Port 2222
UsePrivilegeSeparation no

# 允许密码验证
PasswordAuthentication yes

# 允许登陆的用户
AllowUsers <name>
```

## **重启ssh服务**

```shell
sudo service ssh --full-restart
```

