#!/bin/bash

#python
python_packages_install()
{

	sudo apt install -y python python-pip python-tk python-dev
	sudo apt install -y python3 python3-pip python3-tk python3-dev
	sudo apt install -y python3.10 python3-pip python3.10-dev

	sudo apt install -y python-virtualenv python3-virtualenv
	sudo apt install -y python-protobuf python3-protobuf protobuf-compiler
	sudo apt install -y python-markdown python3-markdown
}

python_version_init()
{
	index=1;

	for i in `ls /usr/bin/python[0-9].*[0-9]`
	do
		echo "sudo update-alternatives --install /usr/bin/python python $i $index"
		sudo update-alternatives --install /usr/bin/python python $i $index
		index=$(($index + 1));
	done
}

python_version_select()
{
	sudo update-alternatives --config python
	python -V
}

python_pip_install()
{
	python -m pip install --upgrade pip
	python -m pip install sphinx
	python -m pip install sphinx_rtd_theme
	python -m pip install scipy
	python -m pip install Beautifulsoup4
	python -m pip install opencv-python
	python -m pip install recommonmark
	python -m pip install pillow==8.0
	python -m pip install numpy==1.19.2
	python -m pip install matplotlib==3.3.2
	python -m pip install scipy==1.5.2
	python -m pip install serial
	python -m pip install opencv-python==3.4.2.16
	python -m pip install pyserial==3.5
	python -m pip install asserts
	python -m pip install mobly
}

#python_packages_install
#python_version_init
#python_version_select
#python_pip_install
