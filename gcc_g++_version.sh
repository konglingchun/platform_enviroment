#!/bin/bash
	sudo apt-get install gcc-5
	sudo apt-get install g++-5
	sudo apt-get install gcc-5-multilib
	sudo apt-get install g++-5-multilib
	sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-5 50
	sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-5 50

	sudo apt-get install gcc-7
	sudo apt-get install g++-7
	sudo apt-get install gcc-7-multilib
	sudo apt-get install g++-7-multilib
	sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-7 100
	sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-7 100

#查看版本
	#gcc -v
	#g++ -v

#配置版本
	#sudo update-alternatives --config gcc
	#sudo update-alternatives --config g++
