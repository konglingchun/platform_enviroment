## 安装clang-format

ubuntu环境下

```shell
sudo apt-get install clang-format
```

## VSCode中下载内置的Clang-Format插件

修改设置(直接搜索名称)

Clang\_format\_fallback Style：Visual Studio

Clang\_format\_path：

```shell
/home/walter/.vscode/extensions/ms-vscode.cpptools-1.19.9-linux-x64/LLVM/bin/clang-format
```

确认路径方法：

```shell
find ~/.vscode/extensions/ -name clang-format
```

Clang\_format\_style：file

Default Formatter：C/C++

Format on save: 勾选(如果电脑配置够的话，云主机此项不建议打开)



空格设置

```shell
"editor.insertSpaces": true,
"editor.detectIndentation": false,
"editor.renderControlCharacters": true,
"editor.renderWhitespace": "all",
```

## 配置clang-format

在家目录下创建.clang-format文件，把下面内容写进去。目前配置基本能帮助大家按照高通风格对齐(除了CAMX_LOG/CHX_LOG看上去目前还不是最优)，也可以自行修改。

```shell
IndentWidth: 4                                                                                                 
ColumnLimit: 128 
BreakBeforeBraces: Allman
SortIncludes: false
AlignAfterOpenBracket: AlwaysBreak
PointerAlignment: Left
# 连续赋值时，对齐所有等号
AlignConsecutiveAssignments:  true
# 连续声明时，对齐所有声明的变量名
AlignConsecutiveDeclarations:  true
```

## 格式化

```shell
格式化指定文件：
clang-format -i vivocode.cpp

格式化diff：
git diff | clang-format-diff -i -binary clang-format -p1

格式化commit：
git diff -U0 HEAD^ | clang-format-diff -i -binary clang-format -p1

格式化目录所有文件：
find ./ -name *.cpp -o -name *.h| xargs clang-format -i
```
