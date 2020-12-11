#Ubuntu 安装Codeblocks
#安装步骤：
#一：首先安装简版CodeBlocks
sudo apt install -y codeblocks
#二：把编译环境，C库、C++库和Boost库装好
sudo apt install -y build-essential
#三：安装 CodeBlocks 的调试组件 Valgrind 用来探测内存泄露的
sudo apt install -y valgrind  
#四：安装CodeBlocks常用插件
sudo apt install -y codeblocks-contrib

