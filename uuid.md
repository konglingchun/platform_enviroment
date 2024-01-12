# 使用命令行工具 blkid

```shell
blkid
```

该命令将列出系统上所有的块设备信息，包括文件系统类型和对应的 UUID。

# 使用命令行工具 lsblk

```shell
lsblk -f
```

该命令将显示系统上挂载的块设备以及对应的文件系统类型和 UUID。其中，-f 选项用于显示文件系统信息。

# 使用命令行工具 ls -l

```shell
ls -l /dev/disk/by-uuid/
```

该命令将显示 /dev/disk/by-uuid/ 目录下的所有链接文件，每个链接文件都对应一个 UUID。
