sudo apt-get remove --purge terminator
sudo apt-get -y install terminator
#sudo sed -i '1,1s/python.*/python2/g' /usr/bin/terminator
cp terminator ~/.config -a
#修改#!/usr/bin/python为#!/usr/bin/python2，保存
sudo gedit `which terminator`

#设置Ctrl+Alt+T的快捷键为打开gnome-terminal
gsettings set org.gnome.desktop.default-applications.terminal exec /usr/bin/gnome-terminal
gsettings set org.gnome.desktop.default-applications.terminal exec-arg "-x"

#换回默认的设置
#gsettings reset org.gnome.desktop.default-applications.terminal exec
#gsettings reset org.gnome.desktop.default-applications.terminal exec-arg
