## 切换python版本(推荐使用方法3)

### 方法1、修改别名

```shell
ls /usr/bin/python*

/usr/bin/python

/usr/bin/python2

/usr/bin/python2.7

/usr/bin/python3

/usr/bin/python3.6

shell alias python='/usr/bin/python3'
```

### 方法2、软链接

在`/usr/bin`中建立一个链接文件指向Python3

```shell
ln -s python /usr/bin/python3
```

### 方法3、update-alternatives

首先我们先看一下有没有关于Python的可选项：

```shell
$ update-alternatives --display python
update-alternatives: error: no alternatives for python
```

先建立python的组,并添加python2和python3的可选项，例：

```shell
sudo update-alternatives --install /usr/bin/python python /usr/bin/python2.7 1 #添加Python2可选项，优先级为1
sudo update-alternatives --install /usr/bin/python python /usr/bin/python3.6 2 #添加Python3可选项，优先级为2
```

自动建立python的组，并添加所有版本的python

```shell
python_version_init()
{
	index=1;

	for i in `ls /usr/bin/python[0-9].*[0-9]`
	do
		echo "sudo update-alternatives --install /usr/bin/python python $i $index"
		sudo update-alternatives --install /usr/bin/python python $i $index
		index=$(($index + 1));
	done
}

python_version_init
```

配置python

```shell
python_version_select()
{
	sudo update-alternatives --config python
	python -V
}

python_version_select
```

删除某个版本的python

```shell
sudo update-alternatives --remove python /usr/bin/python2.7
```

### 方法4、virtualenvwrapper

virtualenvwrapper是管理Python虚拟环境的工具，可以很方便的为不同的项目建立独立的环境，每个项目都可以安装自己的依赖，同时也支持在不同的虚拟环境中存在不同版本的Python。

首先安装virtualenvwrapper，可以选择apt安装或者pip安装

apt安装

```
$ sudo apt-get install virtualenvwrapper
```

pip安装

```
$ sudo pip install virtualenvwrapper
```

当你需要使用Python2开发项目时，建立一个Python2的虚拟环境：

```
$ mkvirtualenv -p /usr/bin/python2 env27
```

当你需要Python3开发时：

```
$ mkvirtualenv -p /usr/bin/python3.4 env34
```

然后可以随时切换不同的虚拟环境：

```
$ workon env27  # 进入Python2环境
$ workon env34  # 进入Python3环境
```

更爽的是，你可以在进入虚拟环境的同时切换到项目目录，只需要编辑`$VIRTUAL_ENV/bin/postactivate`这个文件即可：

```
$ vim $VIRTUAL_ENV/bin/postactivate  #前提是已经进入对应的虚拟环境
```

在文件中添加切换目录的命令：

```
cd  /path/to/your/project
```

