使用ubuntu18.04自带的remmina工具连接windows服务器远程桌面报以下错误

```
You requested an H264 GFX mode for server app.localhost.com, but your libfreerdp does not support H264. Please check Color Depth Settings
```

添加 remmina 仓库

```shell
sudo apt-add-repository ppa:remmina-ppa-team/remmina-next
sudo apt update
```

### 重新安装 remmina

```shell
sudo apt install remmina remmina-plugin-rdp remmina-plugin-secret
```

### 杀掉所有 remmina 进程

```shell
sudo killall remmina
```