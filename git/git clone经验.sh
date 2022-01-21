#===============================================================================================================
全克隆：git clone <git_url>
单一克隆：git clone -b <branch_name> <git_url> [--single-branch]
浅克隆：git clone --depth=<n> -b <branch_name> <git_url> [--single-branch]
可通过如下命令获取部分或完整历史信息:
	git fetch --depth=<n>
	git fetch --unshallow
	git fetch -v
#===============================================================================================================
#解决git远程分支不显示的问题
方法1、
	git remote set-branches origin '*'
	git fetch origin --depth=<n>
	git fetch -v
方法2、
	git remote set-branches --add origin <branch_name>
	git config --get-all remote.origin.fetch
#===============================================================================================================
#在本地创建一个与 branch_name 同名分支跟踪远程分支
	git checkout --track <branch_name> origin/<branch_name>
#===============================================================================================================
#拉取远程分支并创建本地分支:
git remote update origin --prune

#===============================================================================================================
git clone early EOF error 的解决方式
git config --global core.compression -1

error: RPC failed; curl 18 transfer closed with outstanding read data remaining
fatal: The remote end hung up unexpectedly
fatal: early EOF

clone error:curl 56 GnuTLS recv error (-54): Error in the pull function

git config --global http.lowSpeedLimit 0
git config --global http.lowSpeedTime 999999
git config --global http.postBuffer 4294967295
git config --global http.postBuffer 2000000000

clone http方式换成SSH的方式，即 https:// 改为 git://

