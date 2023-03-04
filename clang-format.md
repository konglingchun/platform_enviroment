## 安装clang-format

ubuntu环境下 sudo apt-get install clang-format

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

### 格式化

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
