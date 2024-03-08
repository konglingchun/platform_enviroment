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
	"editor.mouseWheelZoom": true,
	"editor.foldingMaximumRegions": 10000,
	"editor.fontFamily": "'courier new'",
	"editor.fontSize": 20,
	"editor.mouseWheelZoom": true,
	"editor.insertSpaces": false,
	"editor.detectIndentation": true,
	"cmake.configureOnOpen": false,
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
	"java.imports.gradle.wrapper.checksums": [
		{
			"sha256": "66008236d4dd3eb81bf343b12a95350142ad85c996945ff2cbfdb14bde432498",
			"allowed": true
		},
		{
			"sha256": "ee3739525a995bcb5601621a6e2daec1f183bbefc375743acc235cec33547e04",
			"allowed": true
		},
		{
			"sha256": "e2b82129ab64751fd40437007bd2f7f2afb3c6e41a9198e628650b22d5824a14",
			"allowed": true
		}
	],
	"extensions.ignoreRecommendations": true,
	"kite.showWelcomeNotificationOnStartup": false,
	"redhat.telemetry.enabled": true,
	"editor.largeFileOptimizations": false,
	"workbench.editor.empty.hint": "hidden",
	"[c]": {
		"editor.defaultFormatter": "mjohns.clang-format"
	},
	"git.openRepositoryInParentFolders": "never",
	"cmake.showOptionsMovedNotification": false,
}
```

## 安装插件

```shell
MS-CEINTL.vscode-language-pack-zh-hans

jaycetyle.vscode-gnu-global
ms-vscode.cpptools
ms-vscode.cpptools-extension-pack
ajshort.include-autocomplete
TabNine.tabnine-vscode
VisualStudioExptTeam.intellicode-api-usage-examples
VisualStudioExptTeam.vscodeintellicode
uctakeoff.vscode-counter
rsbondi.highlight-words
mjohns.clang-format
xaver.clang-format
bukas.GBKtoUTF8
Gruntfuggly.todo-tree
cschlosser.doxdocgen
twxs.cmake
ms-vscode.cmake-tools
ms-vscode.makefile-tools
trond-snekvik.gnu-mapfiles

mhutchie.git-graph
donjayamanne.githistory
eamodio.gitlens
johnstoncode.svn-scm
earshinov.filter-lines
everettjf.filter-line

ms-python.isort
ms-python.python
ms-python.vscode-pylance
ms-toolsai.jupyter
ms-toolsai.jupyter-renderers
ms-toolsai.vscode-jupyter-cell-tags
ms-toolsai.vscode-jupyter-slideshow
mushan.vscode-paste-image

redhat.java
vscjava.vscode-java-debug
vscjava.vscode-java-dependency
vscjava.vscode-java-pack
vscjava.vscode-java-test
vscjava.vscode-maven
yzhang.markdown-all-in-one
bierner.github-markdown-preview
bierner.markdown-checkbox
bierner.markdown-emoji
bierner.markdown-footnotes
bierner.markdown-mermaid
bierner.markdown-preview-github-styles
bierner.markdown-yaml-preamble
DavidAnson.vscode-markdownlint
mirone.milkdown

eightHundreds.vscode-drawio
purocean.drawio-preview
jebbs.plantuml
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

