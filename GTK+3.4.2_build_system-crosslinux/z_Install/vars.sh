#!/bin/sh

# Change these reflecting your local host system

export DISTRO=CentOS6
export ARCH=i386

# Change these reflecting where final binaries should land

export NATIVEPREFIX="/opt/gtk3_native"
export WIN32PREFIX="/opt/gtk3_win32"



if [ "$BUILD" == "native" ]; then
	export PREFIX="$NATIVEPREFIX"
elif [ "$BUILD" == "win32" ]; then
	export PREFIX="$WIN32PREFIX"
else
	return 1
fi

export PATH="$PATH:$PREFIX/bin"
export CFLAGS="-I$PREFIX/include"
export CPPFLAGS="-I$PREFIX/include"
export LDFLAGS="-L$PREFIX/lib"
export PKG_CONFIG_PATH="$PREFIX/lib/pkgconfig"
export XDG_DATA_DIRS="$PREFIX/share"
