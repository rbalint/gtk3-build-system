#!/bin/bash

## install needed packages assuming CentOS 7
cd /root
yum install -y epel-release
yum install -y mingw32-gcc mingw64-gcc git patch make autoconf automake gcc gperf gettext wget bison tar libtool which libxslt-devel python-lxml bzip2 gcc-c++ gtk-doc unzip mesa-libEGL-devel xorg-x11-util-macros
wget ftp://fr2.rpmfind.net/linux/sourceforge/k/ke/kenzy/special/C7/x86_64/ragel-6.8-3.el7.centos.x86_64.rpm
# TODO check sha1sum
rpm -i ragel-6.8-3.el7.centos.x86_64.rpm

