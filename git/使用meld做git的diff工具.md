## ubuntu:

### setp 1:install meld

```shell
sudo apt-get install meld
```

### step 2:config git difftool

```shell
git config --global merge.tool meld
git config --global mergetool.meld.cmd 'meld "$BASE" "$LOCAL" "$REMOTE" "$MERGED"'
git config --global diff.tool meld
git config --global difftool.meld.cmd 'meld "$LOCAL" "$REMOTE"'
git config --global alias.dm 'difftool --dir-diff --tool=meld'
```

或

直接修改~/.gitconfig

```
[alias]
    dm = difftool --dir-diff --tool=meld
[merge]
	tool = meld
[mergetool "meld"]
	cmd = meld \"$BASE\" \"$LOCAL\" \"$REMOTE\" \"$MERGED\"
[diff]
	tool = meld
[difftool "meld"]
	cmd = meld \"$LOCAL\" \"$REMOTE\"
```

### step 3: use

```shell
git difftool --tool=meld
```

## windows:

### setp 1:install meld

```shell
download meld.exe
doule click meld.exe
```

### step 2:

```shell
add path of meld.exe to path
```

### step 3: 

	git config --global merge.tool meld
	git config --global mergetool.meld.cmd 'meld.exe \"$BASE\" \"$LOCAL\" \"$REMOTE\" \"$MERGED\"'
	
	git config --global diff.tool meld
	git config --global difftool.meld.cmd 'meld.exe \"$LOCAL\" \"$REMOTE\"'

