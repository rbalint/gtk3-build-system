#!/bin/sh

# Source variables here, please modify this script only
source ./vars.sh


# Install prerequisites depending on the distro

if [ "$DISTRO" == "CentOS6" ]; then
	yum install -y gcc make pkgconfig
        yum install -y tar gzip bzip2 xz unzip
	yum install -y perl perl-XML-Simple
	yum install -y python
	yum install -y intltool
else
	echo -e "\n Unsupported distribution"
        exit 1
fi

if [ ! -f /usr/bin/gcc ] || [ ! -f /usr/bin/make ] || [ ! -f /usr/bin/pkg-config ] || [ ! -f /bin/tar ] || [ ! -f /bin/gzip ] || [ ! -f /usr/bin/bzip2 ] || [ ! -f /usr/bin/xz ] || [ ! -f /usr/bin/unzip ] || [ ! -f /usr/bin/perl ] || [ ! -f /usr/bin/python ] || [ ! -f /usr/bin/intltool-update ]; then
	echo -e "\n Installation incomplete ; check your repositories."
	exit 1
fi


echo -e "\n Installation succeeded."
