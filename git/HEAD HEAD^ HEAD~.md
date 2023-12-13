#### `HEAD`

```
HEAD` 指向当前所在分支提交至仓库的最新一次的 `commit
# 使用最新一次提交重制暂存区
git reset HEAD -- filename

# 使用最新一次提交重制暂存区和工作区
git reset --hard HEAD

# 将 commit log 回滚一次 暂存区和工作区代码不变
git reset --soft HEAD~1
```

#### `HEAD~{n}`

```
~` 是用来在`当前提交路径`上回溯的修饰符
`HEAD~{n}` 表示当前所在的提交路径上的前 `n` 个提交（n >= 0）：
`HEAD` = `HEAD~0`
`HEAD~` = `HEAD~1`
`HEAD~~` = `HEAD~2`
`HEAD{n个~}` = `HEAD~n
```

#### `HEAD^n`

`^` 是用来`切换父级提交路径`的修饰符。当我们始终在一个分支比如 `dev` 开发/提交代码时，每个 `commit` 都只会有一个父级提交，就是上一次提交，但当并行多个分支开发，`feat1`, `feat2`, `feat3`，完成后 `merge feat1 feat2 feat3` 回 `dev` 分支后，此次的 `merge commit` 就会有多个父级提交。

![image.png](https://segmentfault.com/img/bVbGA97)
如上提交图所示，当前的 `HEAD` 节点有 `3` 个父级：`feat1`（归并到主线），`feat2`，`feat3`

tips: `父级` 一词本身就代表回溯了 `1` 次

`HEAD` 的 第一个父级

```gauss
# 第一个父级提交 即 feat1 的最近第1次的提交
λ git show HEAD^
feat1 3 foo_feat1
    
# 第一个父级提交的上1次提交 即 feat1 的最近第2次的提交
λ git show HEAD^~1 / git show HEAD^^
feat1 2 foo_feat1
    
# 第一个父级提交的上2次提交 即 feat1 的最近第3次的提交
λ git show HEAD^~2 / git show HEAD^^^
feat1 1 foo_feat1
```

`HEAD` 的 第二个父级

```gauss
# 第二个父级提交 即 feat2 的最近第1次的提交
λ git show HEAD^2
feat2 2 foo_feat2
    
# 第二个父级提交的上1次提交 即 feat2 的最近第2次的提交
λ git show HEAD^2~1 / git show HEAD^2^
feat2 1 foo_feat2
    
# 第二个父级提交的上2次提交 即 feat2 的最近第3次的提交
λ git show HEAD^2~2 / git show HEAD^2^^
feat2 add foo_feat2
```

`HEAD` 的 第三个父级

```gauss
# 第三个父级提交 即 feat3 的最近第1次的提交
λ git show HEAD^3
feat3 2 foo_feat3
    
# 第三个父级提交的上1次提交 即 feat3 的最近第2次的提交
λ git show HEAD^3~1 / git show HEAD^3^
feat3 1 foo_feat3
    
# 第三个父级提交的上2次提交 feat3 的最近第3次的提交回归到了主线上
λ git show HEAD^3~2 / git show HEAD^3^^
master foo 2
```

#### 示例

```apache
# 当前提交
HEAD = HEAD~0 = HEAD^0

# 主线回溯
HEAD~1 = HEAD^ 主线的上一次提交
HEAD~2 = HEAD^^ 主线的上二次提交
HEAD~3 = HEAD^^^ 主线的上三次提交

# 如果某个节点有其他分支并入
HEAD^1 主线提交（第一个父提交）
HEAD^2 切换到了第2个并入的分支并得到最近一次的提交
HEAD^2~3 切换到了第2个并入的分支并得到最近第 4 次的提交
HEAD^3~2 切换到了第3个并入的分支并得到最近第 3 次的提交

# ^{n} 和 ^ 重复 n 次的区别 
HEAD~1 = HEAD^
HEAD~2 = HEAD^^
HEAD~3 = HEAD^^^
# 切换父级
HEAD^1~3 = HEAD~4 
HEAD^2~3 = HEAD^2^^^
HEAD^3~3 = HEAD^3^^^
```