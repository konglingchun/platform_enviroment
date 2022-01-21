## 安装

```shell
ubuntu: apt-get -y install terminator
centos: yum -y install terminator
```

## 注意：不区分大小写

## 垂直分屏

```shell
Ctrl+Shift+E
```

## 水平分屏

```shell
Ctrl+Shift+O
```

## 关闭窗口

```shell
Ctrl+Shift+W
```

## 多终端同步输入

所有终端执行相同的命令，非常适合批量操作

```shell
SUPER+G
```

## 关闭多终端同步输入

```shell
SUPER+shift+G
```

## 放大单个窗口

```shell
SUPER+shift+X
```

## 调整窗口大小

```shell
ctrl+shift+左方向键
ctrl+shift+右方向键
```

## 调整窗口视觉参数

```shell
[global_config]
  enabled_plugins = LaunchpadCodeURLHandler, APTURLHandler, LaunchpadBugURLHandler
  title_font = Courier new 10 Pitch 14
  title_use_system_font = False
[keybindings]
[layouts]
  [[default]]
    [[[child1]]]
      parent = window0
      type = Terminal
    [[[window0]]]
      parent = ""
      type = Window
[plugins]
[profiles]
  [[default]]
    allow_bold = False
    background_color = "#2d0922"
    cursor_color = "#ffffff"
    font = Courier 10 Pitch 14
    foreground_color = "#f3f3f3"
    palette = "#000000:#cc0000:#4e9a06:#c4a000:#3465a4:#75507b:#06989a:#d3d7cf:#555753:#ef2929:#8ae234:#fce94f:#729fcf:#ad7fa8:#34e2e2:#eeeeec"
    scrollback_infinite = True
    scrollbar_position = hidden
    use_system_font = False
  [[gress]]
    cursor_color = "#ffffff"
    palette = "#000000:#cc0000:#4e9a06:#c4a000:#3465a4:#75507b:#06989a:#d3d7cf:#555753:#ef2929:#8ae234:#fce94f:#729fcf:#ad7fa8:#34e2e2:#eeeeec"
    show_titlebar = False
    use_theme_colors = True
```
