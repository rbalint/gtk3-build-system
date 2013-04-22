#!/bin/sh

# Source variables here, please modify this script only
source ./vars.sh


# Install MinGW depending on the distro & architecture

cd ../MinGW/$DISTRO/$ARCH

if [ "$DISTRO" == "CentOS6" ] && [ "$ARCH" == "i386" ]; then
	rpm -ivh libmpc-0.8-3.el6.i686.rpm
	rpm -ivh mingw32-filesystem-69-7.el6.noarch.rpm
	rpm -ivh mingw32-runtime-3.18-3.el6.noarch.rpm
	rpm -ivh mingw32-binutils-2.21-2.el6.i686.rpm
	rpm -ivh mingw32-cpp-4.5.3-2.el6.i686.rpm
	rpm -ivh mingw32-w32api-3.17-1.el6.noarch.rpm
	rpm -ivh mingw32-gcc-4.5.3-2.el6.i686.rpm mingw32-gcc-c++-4.5.3-2.el6.i686.rpm mingw32-pthreads-2.8.0-15.20110511cvs.el6.noarch.rpm
elif [ "$DISTRO" == "CentOS6" ] && [ "$ARCH" == "amd64" ]; then
	rpm -ivh libmpc-0.8-3.el6.x86_64.rpm
	rpm -ivh mingw32-filesystem-69-7.el6.noarch.rpm
	rpm -ivh mingw32-runtime-3.18-3.el6.noarch.rpm
	rpm -ivh mingw32-binutils-2.21-2.el6.x86_64.rpm
	rpm -ivh mingw32-cpp-4.5.3-2.el6.x86_64.rpm
	rpm -ivh mingw32-w32api-3.17-1.el6.noarch.rpm
	rpm -ivh mingw32-gcc-4.5.3-2.el6.x86_64.rpm mingw32-gcc-c++-4.5.3-2.el6.x86_64.rpm mingw32-pthreads-2.8.0-15.20110511cvs.el6.noarch.rpm
else
	echo -e "\n Unsupported distribution"
        exit 1
fi

if [ ! -f /usr/bin/i686-pc-mingw32-gcc ] ; then
	echo -e "\n Installation incomplete ; check your repositories."
	exit 1
fi


echo -e "\n Installation succeeded."
