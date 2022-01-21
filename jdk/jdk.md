## JRE vs OpenJDK vs [Oracle](https://www.linuxidc.com/topicnews.aspx?tid=12) JDK

------

在我们继续了解如何安装`Java`之前, 让我们快速地了解`JRE`、`OpenJDK`和`Oracle JDK`之间的不同之处.

### JRE和JDK

------

- `JRE(Java Runtime Environment)`它是你运行一个基于Java语言应用程序的所正常需要的环境。如果你不是一个程序员的话，这些足够你的需要.
- `JDK`代表`Java`开发工具包，如果你想做一些有关`Java`的开发(阅读程序), 这正是你所需要的.

### Open JDK和Oracle JDK

------

- `OpenJDK`是`Java`开发工具包的开源实现
- `Oracle JDK`是`Java`开发工具包的官方`Oracle`版本

## 安装Open JDK

```shell
sudo apt-get install -y openjdk-11-jdk
sudo apt-get install -y openjdk-11-dbg
sudo apt-get install -y openjdk-11-jdk
sudo apt-get install -y openjdk-11-jre-zero
sudo apt-get install -y openjdk-11-jre-lib
sudo apt-get install -y openjdk-11-jre
#sudo apt-get install -y openjdk-11-jre-headless
#sudo apt-get install -y openjdk-11-demo
#sudo apt-get install -y openjdk-11-doc
```

## 检验是否安装成功及版本

```shell
java -version
javac -version
```

