安装好的操作系统一般都带有vim编辑器，但是默认不支持GB2312中文，打开文件出现乱码，解决办法如下。

## 1.打开以下文件

```
sudo vim /var/lib/locales/supported.d/local
```

## 2.添加以下内容

```
zh_CN.GBK GBK
zh_CN.GB2312 GB2312
zh_CN.GB18030 GB18030
```

## 3.执行以下命令，使配置生效

```
sudo dpkg-reconfigure locales
```

## 4.打开以下文件

```
sudo vim /etc/vim/vimrc
```

## 5.在文件末尾添加以下内容

```
set fileencodings=utf-8,gb2312,gbk,gb18030
set termencoding=encoding
set encoding=prc
```

## 6.保存退出即可！