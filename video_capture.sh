#截图软件
#sudo apt install deepin-screenshot -y

#这个版本不会出shutter不能编辑的问题
sudo add-apt-repository ppa:linuxuprising/shutter
sudo apt install -y shutter
 
#sudo apt install -y flameshot

#录屏软件
sudo apt install -y peek
#mp4
sudo apt install -y simplescreenrecorder

#开始录制：SUPER+CTRL+ r
#暂停录制：SUPER+CTRL+ p
#结束录制：SUPER+CTRL+ f
#显示Kazam：SUPER+CTRL+ s
#退出Kazam：SUPER+CTRL+ q
sudo apt install -y kazam

#gif
#转化mp4文件为gif, 可使用下面命令:ffmpeg -i test.mp4 out.gif
#此外还可以添加相应的参数(其中, -ss 2 to 12 表示从从视频的第2秒开始转换, 转换时间长度为12秒后停止. -s用于设定分辨率, -r 用于设定帧数. 通常Gif有15帧左右就比较流程了):
#ffmpeg -ss 2 -t 12 -i test.mp4 -s 649x320 -r 15 output.gif

#视频播放软件
sudo apt install -y mplayer
sudo apt install -y smplayer

#视频处理
#安装ffmpeg，默认会附带ffplay
sudo apt install -y ffmpeg

#图片处理
sudo apt install -y imagemagick imagej
sudo apt install -y gimp
