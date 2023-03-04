Ubuntu的软件包格式是deb，如果要安装rpm的包，则要先用alien把rpm转换成deb。

sudo apt-get install alien #alien默认没有安装，所以首先要安装它

sudo alien xxxx.rpm #将rpm转换位deb，完成后会生成一个同名的xxxx.deb

sudo dpkg -i xxxx.deb #安装

注意，用alien转换的deb包并不能保证100%顺利安装，所以可以找到deb最好直接用deb

有时候，我们想要使用的软件并没有被包含到 Ubuntu 的仓库中，而程序本身也没有提供让 Ubuntu 可以使用的 deb 包，你又不愿从源代码编译。但假如软件提供有 rpm 包的话，我们也是可以在 Ubuntu 中安装的。