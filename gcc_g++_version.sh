#!/bin/bash
	sudo apt-get install gcc-4.8
	sudo apt-get install g++-4.8
	sudo apt-get install gcc-4.8-multilib
	sudo apt-get install g++-4.8-multilib
	sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.8 50
	sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-4.8 50	
	sudo apt-get install gcc-5
	sudo apt-get install g++-5
	sudo apt-get install gcc-5-multilib
	sudo apt-get install g++-5-multilib
	sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-5 100
	sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-5 100

#查看版本
	#gcc -v
	#g++ -v

#配置版本
	#sudo update-alternatives --config gcc
	#sudo update-alternatives --config g++
