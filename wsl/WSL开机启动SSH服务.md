# WSL开机启动SSH服务

## wsl中添加脚本

## sudo vi /etc/init.wsl

文件里内容如下：

```shell
sudo service ssh --full-restart
```

文件添加可执行权限：

```shell
sudo chmod +x /etc/init.wsl
```

## **查看wsl中ubuntu名称**

```shell
Microsoft Windows [版本 10.0.19042.804]
(c) 2020 Microsoft Corporation. 保留所有权利。

C:\Users\72164652>wsl -l -v  
NAME      STATE           VERSION
* Ubuntu    Running         1

C:\Users\72164652>
```

## 设置启动脚本

新建文件：wsl_init.vbs

```shell
Set ws = WScript.CreateObject("WScript.Shell")
ws.run "wsl -d Ubuntu -u root /etc/init.wsl restart"
```

## 设置开机启动

执行 win+R 输入 shell:startup 进入windows启动目录，然后将 wsl_init.vbs 脚本放进去即可
