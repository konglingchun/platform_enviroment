sudo apt-get remove --purge terminator
sudo apt-get -y install terminator
#sudo sed -i '1,1s/python.*/python2/g' /usr/bin/terminator
cp terminator ~/.config -a
#修改#!/usr/bin/python为#!/usr/bin/python2，保存
sudo gedit `which terminator`

