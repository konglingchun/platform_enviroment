# 官方安装

 [官网安装方法](https://en.wikibooks.org/wiki/OpenGL_Programming/Installation/Linux)

```shell
sudo apt-get install build-essential
sudo apt-get install build-essential libgl1-mesa-dev
sudo apt-get install libglew-dev libsdl2-dev libsdl2-image-dev libglm-dev libfreetype6-dev
sudo apt-get install libglfw3-dev libglfw3
```

# 额外安装

```shell
#安装编译器与基本的库
sudo apt-get install build-essential

#安装OpenGL Library
sudo apt-get install libgl1-mesa-dev

#安装OpenGL Utilities
#OpenGL Utilities 是一组建构于 OpenGL Library 之上的工具组，提供许多很方便的函式，使 OpenGL 更强大且更容易使用。
sudo apt-get install libglu1-mesa-dev

#安装OpenGL Utility Toolkit
#OpenGL Utility Toolkit 是建立在 OpenGL Utilities 上面的工具箱，除了强化了 OpenGL Utilities 的不足之外，也增加了 OpenGL 对于视窗介面支援。
#sudo apt-get install libglut-dev 这是旧命令
sudo apt-get install freeglut3-dev
```
