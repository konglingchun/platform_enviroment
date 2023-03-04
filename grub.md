# change grub timeout

```
sudo gedit /etc/default/grub
```

```shell
GRUB_TIMEOUT=10
GRUB_CMDLINE_LINUX_DEFAULT="quiet splash"
```

修改为

```shell
GRUB_TIMEOUT=3
GRUB_CMDLINE_LINUX_DEFAULT="fsck.mode=skip quiet splash"
```

```shell
sudo update-grub
```

# fix grub

```shell
sudo add-apt-repository ppa:yannubuntu/boot-repair && sudo apt-get update&&sudo apt-get install -y boot-repair && boot-repair
```

## grub命令行引导启动Windows

grub的几条核心命令

    ls
    ls 命令 ，和Linux的ls命令功能基本相同。列出目录下的文件与子目录。在默认的根目录下，键入ls命令，可以看到打印出一串形如“(hd0,1)”的目录，这里的每一个目录就代表着一个硬盘的分区（不管是linux的还是windows的）。
    ls命令还可以用于查看任意子目录里的情况，如 ls (hd0, 1)/ 可查看(hd0, 1)分区中的文件。
    
    set root=
    和Linux里的终端一样，Grub的命令行也有当前目录的概念。set root= 可以改换当前目录。比如set root=(hd0, 1)
    
    chainloader
    chainloader命令是指定一个文件作为链式装载程序载入。怎么样，这个解释是不是说得云里雾里？但实际上，如果我们只是用终端启动windows的话，也不需要了解太多，你只需要用ls命令找到windows的bootmgfw.efi即可（一般来说，这个efi是在某个分区下的/efi/Microsoft/Boot/中）
    
    boot
    按照当前设置，引导系统启动。

有了上述的四条命令，我们就可以实现用grub命令引导启动windows了。基本的操作步骤：

    在引导列表页按ESC进入Grub2终端 。
    insmod part_gpt 导入模块，让grub可以看到gpt格式的硬盘（这个有没有必要我也不清楚，但执行一下也不妨事。）。
    借助 ls 命令找到windows系统的 bootmgfw.efi 所在的分区（hd*, *）。
    修改当前目录 set root=(hd*, *) 。
    chainloader /efi/Microsoft/Boot/bootmgfw.efi （可以用 ls 再确认一下这个路径）。
    boot
    （Tips： ls命令打印出来的分区名称，可能是”(hd*, gpt*)”，在我们键入分区时，这个gpt可以省略。）
