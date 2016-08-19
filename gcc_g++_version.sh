#!/bin/bash
	sudo apt-get install gcc
	sudo apt-get install g++
	sudo apt-get install gcc-4.4 gcc-4.4-multilib g++-4.4 g++-4.4-multilib
	sudo apt-get install gcc-4.6 gcc-4.6-multilib g++-4.6 g++-4.6-multilib
	sudo apt-get install gcc-4.8 gcc-4.8-multilib g++-4.8 g++-4.8-multilib
	sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.4 100
	sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.6 80
	sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.8 50
	sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-4.4 100
	sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-4.6 80
	sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-4.8 50
	sudo update-alternatives --install /usr/bin/cpp cpp-bin /usr/bin/cpp-4.4 100
	sudo update-alternatives --install /usr/bin/cpp cpp-bin /usr/bin/cpp-4.6 80
	sudo update-alternatives --install /usr/bin/cpp cpp-bin /usr/bin/cpp-4.8 50

#查看版本
	#gcc -v
	#g++ -v

#配置版本
	#sudo update-alternatives --config gcc
	#sudo update-alternatives --config g++
