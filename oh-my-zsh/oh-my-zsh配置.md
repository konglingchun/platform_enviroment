## zsh介绍

https://www.zhihu.com/question/21418449

## 解决进入git目录卡顿的问题

```shell
git config --global oh-my-zsh.hide-status 1

vi .zshrc

#plugins=(git)

修改为

plugins=()
```

## zsh定制

```shell
#added by lingchun
export PATH=$PATH:~/.mine_tool/bin:/opt/bin/
#export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib
#

alias minicom="minicom -w -c on"
alias unzip="unzip -O CP936"
HIST_STAMPS="yyyy-mm-dd"
alias history="fc -il 1"
alias fd="fd -H -I -i"
alias cp="advcp -g"
alias mv="advmv -g"
alias ls="exa"
```

## zsh git目录提速

在 [oh-my-zsh](https://so.csdn.net/so/search?q=oh-my-zsh&spm=1001.2101.3001.7020) 进入 包含 git 仓库目录时，会变的比平时慢/卡顿

原因是因为 oh-my-zsh 要获取 git 更新信息

解决办法：

设置 oh-my-zsh 不读取文件变化信息（在 git 项目目录执行下列命令）

```
git config --global --add oh-my-zsh.hide-dirty 1
```

如果你还觉得慢，可以再设置 oh-my-zsh 不读取任何 git 信息

```
git config --global --add oh-my-zsh.hide-status 1
```

okey 了，如果想恢复，设置成0就好

## 显示路径

```shell
文件：~/.oh-my-zsh/themes/robbyrussell.zsh-theme
PROMPT+=' %{$fg[cyan]%}%c%{$reset_color%} $(git_prompt_info)'
替换为：
PROMPT+=' %{$fg[cyan]%}$PWD%{$reset_color%} $(git_prompt_info)'
```

## 设置主题

可以指定某个主题，也可以随机（random），

ZSH_THEME="random"

## 添加插件

下载的插件放置~/.oh-my-zsh/custom/plugins目录下，然后在配置文件~/.zshrc的plugins后面追加插件名字即可，例：

```shell
plugins=(zsh-autosuggestions zsh-syntax-highlighting zsh-completions zsh-syntax-highlighting) 
```

## Zsh 插件

[zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)

自动补全插件，输入命令后会自动提示相关命令，使用方向键`→`可以实现自动补全

```shell
#Clone this repository into $ZSH_CUSTOM/plugins (by default ~/.oh-my-zsh/custom/plugins)
git clone <https://github.com/zsh-users/zsh-autosuggestions> ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
 
#Add the plugin to the list of plugins for Oh My Zsh to load (inside ~/.zshrc):
plugins=( 
    # other plugins...
    zsh-autosuggestions
)
 
#Start a new terminal session.
zsh
```

[zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)

这个插件可以识别的shell命令并高亮显示

```shell
#Clone this repository in oh-my-zsh's plugins directory:
git clone <https://github.com/zsh-users/zsh-syntax-highlighting.git> ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
 
#Activate the plugin in ~/.zshrc:
plugins=( [plugins...] zsh-syntax-highlighting)
 
#Restart zsh (such as by opening a new instance of your terminal emulator).
zsh
```

[zsh-completions](https://github.com/zsh-users/zsh-completions)

命令补全插件，输入命令按Tab键后会提示可以使用的命令和说明

```shell
#Clone the repository inside your oh-my-zsh repo:
git clone <https://github.com/zsh-users/zsh-completions> ${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions
 
#Add it to FPATH in your .zshrc by adding the following line before source "$ZSH/oh-my-zsh.sh":
fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src
 
#Start a new terminal session.
zsh
```

[zsh-history-substring-search](https://github.com/zsh-users/zsh-history-substring-search)

```shell
#Clone the repository inside your oh-my-zsh repo:
git clone <https://github.com/zsh-users/zsh-history-substring-search> ${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-history-substring-search

```
