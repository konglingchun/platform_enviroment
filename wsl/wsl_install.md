# 安装WSL2.0

管理员权限打开命令行

```shell
wsl --install
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
wsl --set-default-version 2
```

## 启用Hyper-V

```shell
DISM /Online /Enable-Feature /All /FeatureName:Microsoft-Hyper-V
```

# 安装ubuntu

https://blog.csdn.net/weixin_57367513/article/details/135001273

https://blog.csdn.net/huiruwei1020/article/details/107551106

https://zhuanlan.zhihu.com/p/386590591

