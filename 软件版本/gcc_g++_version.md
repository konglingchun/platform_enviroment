```shell
#!/bin/bash
	sudo apt-get install gcc-5
	sudo apt-get install g++-5
	sudo apt-get install gcc-5-multilib
	sudo apt-get install g++-5-multilib
	sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-5 1
	sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-5 1

	sudo apt-get install gcc-11
	sudo apt-get install g++-11
	sudo apt-get install gcc-11-multilib
	sudo apt-get install g++-11-multilib
	sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-11 2
	sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-11 2
```



#查看版本
	#gcc -v
	#g++ -v

#配置版本
	#sudo update-alternatives --config gcc
	#sudo update-alternatives --config g++
