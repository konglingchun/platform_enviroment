## 安装clang-format

ubuntu环境下 sudo apt-get install clang-format

## 配置.clang-format

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

### git commit -s后 用这个命令检查提交的代码，有问题会自动修改文件

```shell
git diff -U0 HEAD^ | clang-format-diff -i -p1
```

然后

```shell
git diff  git add git commit --amend
git diff
git add .
git commit --amend
```