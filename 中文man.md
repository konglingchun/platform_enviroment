[中文manpage手册github项目网址](https://github.com/man-pages-zh/manpages-zh)

ubuntu下manpages中文手册安装

```shell
sudo apt update
sudo apt install manpages-zh
```

查看manpages-zh库的安装路径

```shell
dpkg -L manpages-zh | ag zh_CN
/usr/share/man/zh_CN
```

使用alias命令给中文man取名为cman

```shell
echo "alias cman=\"man -M /usr/share/man/zh_CN\"" >> ~/.zshrc
或
echo "alias cman=\"man -L zh_CN.utf8\"" >> ~/.zshrc
. ~/.zshrc
```

测试

```shell
cman 2 open
```
