# vscode

## 软件安装

*   Download vscode 

## 语言

*   MS-CEINTL.vscode-language-pack-zh-hans

*   Ctrl+Shift+P

*   configure display language

## 大小写转换

*   选中要更改的小写字母
*   Ctrl+Shift+P
*   输入：transform
*   选择需要的转换操作

## 设置 settings.json

```shell
{
    "workbench.colorTheme": "Visual Studio 2017 Dark - C++",
	"editor":{
		"mouseWheelZoom":true,
		"foldingMaximumRegions": 10000,
		"fontFamily": "'courier new'",
		"fontSize": 20,
		"insertSpaces": false,
		"detectIndentation": true,
		"formatOnSave": false,
		"largeFileOptimizations": false
	},

	"security.workspace.trust.untrustedFiles": "open",
	"tabnine.experimentalAutoImports": true,
	"gnuGlobal.autoUpdate": "Disabled",
	"gnuGlobal.completion": "Disabled",
	"gnuGlobal.encoding": "utf-8",
	"gnuGlobal.globalExecutable": "/usr/bin/global",
	"gnuGlobal.gtagslExecutable": "/usr/bin/gtags",
	"window.title": "${rootName}${separator}${dirty}${activeEditorLong}${separator}",
	"glassit.alpha": 255,
	"security.workspace.trust.enabled": false,
	"extensions.ignoreRecommendations": true,
	"kite.showWelcomeNotificationOnStartup": false,
	"redhat.telemetry.enabled": true,
	"workbench.editor.empty.hint": "hidden",
	"git.openRepositoryInParentFolders": "never",
	"cmake.showOptionsMovedNotification": false,
	"cmake.configureOnOpen": false,
	"C_Cpp.clang_format_path": "/home/walter/.vscode/extensions/ms-vscode.cpptools-1.19.9-linux-x64/LLVM/bin/clang-format",
	"clang-format.assumeFilename": "~/.clang-format",
	"[c]": {
		"editor.defaultFormatter": "xaver.clang-format"
	},
	"[cpp]": {
		"editor.defaultFormatter": "xaver.clang-format"
	},

	"fileheader.configObj": {
		"autoAdd": false 
	},

	"fileheader.cursorMode": {
		"description": "", 
		"param": "",
		"return": ""
	}
}
```

## 安装插件

```shell
ajshort.include-autocomplete
alibaba-cloud.tongyi-lingma
andyyaldoo.vscode-json
bbenoist.doxygen
bierner.github-markdown-preview
bierner.markdown-checkbox
bierner.markdown-emoji
bierner.markdown-footnotes
bierner.markdown-mermaid
bierner.markdown-preview-github-styles
bierner.markdown-yaml-preamble
bukas.gbktoutf8
cschlosser.doxdocgen
davidanson.vscode-markdownlint
donjayamanne.githistory
dotjoshjohnson.xml
eamodio.gitlens
earshinov.filter-lines
eighthundreds.vscode-drawio
equinusocio.vsc-material-theme
equinusocio.vsc-material-theme-icons
everettjf.filter-line
exiahuang.dictionary
github.github-vscode-theme
github.vscode-pull-request-github
gruntfuggly.todo-tree
hediet.vscode-drawio
jaycetyle.vscode-gnu-global
jebbs.plantuml
jeff-hykin.better-cpp-syntax
johnstoncode.svn-scm
kejun.devtoys
mads-hartmann.bash-ide-vscode
marus25.cortex-debug
mcu-debug.debug-tracker-vscode
mcu-debug.memory-view
mcu-debug.peripheral-viewer
mcu-debug.rtos-views
mhutchie.git-graph
microhobby.linuxkerneldev
mirone.milkdown
ms-ceintl.vscode-language-pack-zh-hans
ms-python.debugpy
ms-python.isort
ms-python.python
ms-python.vscode-pylance
ms-toolsai.jupyter
ms-toolsai.jupyter-keymap
ms-toolsai.jupyter-renderers
ms-toolsai.vscode-jupyter-cell-tags
ms-toolsai.vscode-jupyter-slideshow
ms-vscode-remote.remote-containers
ms-vscode-remote.remote-ssh
ms-vscode-remote.remote-ssh-edit
ms-vscode-remote.remote-wsl
ms-vscode.cmake-tools
ms-vscode.cpptools
ms-vscode.cpptools-extension-pack
ms-vscode.cpptools-themes
ms-vscode.makefile-tools
ms-vscode.remote-explorer
mushan.vscode-paste-image
nordic-semiconductor.nrf-devicetree
obkoro1.korofileheader
plorefice.devicetree
purocean.drawio-preview
redhat.java
redhat.vscode-xml
rsbondi.highlight-words
s-nlf-fh.glassit
sailsxu.gtags
shd101wyy.markdown-preview-enhanced
tabnine.tabnine-vscode
timonwong.shellcheck
trond-snekvik.gnu-mapfiles
twxs.cmake
uctakeoff.vscode-counter
visualstudioexptteam.intellicode-api-usage-examples
visualstudioexptteam.vscodeintellicode
vscjava.vscode-java-debug
vscjava.vscode-java-dependency
vscjava.vscode-java-pack
vscjava.vscode-java-test
vscjava.vscode-maven
vscodevim.vim
xaver.clang-format
yzane.markdown-pdf
yzhang.markdown-all-in-one
zainchen.json
```

## VS Code文件观察程序的句柄达到上限

1、使用以下命令查看当前限制：

```shell
cat /proc/sys/fs/inotify/max_user_watches
```

2、编辑/etc/sysctl.conf

```shell
sudo vim /etc/sysctl.conf
```

3、将以下一行添加到文件末尾，可以将限制增加到最大值

```shell
fs.inotify.max_user_watches=524288
```

4、保存即可

```shell
sudo sysctl -p
```

虽然524,288是可以观看的最大文件数，但如果您处于特别受内存限制的环境中，您可能希望降低该数量。每个文件监视占用540字节（32位）或1kB（64位），因此假设所有524,288个句柄都被消耗，上限约为256MB（32位）或512MB（64位）。

