#!/bin/sh

# Change these reflecting your local host system

export DISTRO=CentOS6
export ARCH=amd64

# Change these reflecting where final binaries should land

export NATIVEPREFIX="/srv/win32builder/continuous/build/native"
export WIN32PREFIX="/srv/win32builder/continuous/build/win32"
export WIN64PREFIX="/srv/win32builder/continuous/build/win64"



if [ "$BUILD" == "native" ]; then
	export PREFIX="$NATIVEPREFIX"
elif [ "$BUILD" == "win32" ]; then
	export PREFIX="$WIN32PREFIX"
elif [ "$BUILD" == "win64" ]; then
	export PREFIX="$WIN64PREFIX"
else
	return 1
fi

export PATH="$PATH:$PREFIX/bin"
export CFLAGS="-g -I$PREFIX/include"
export CPPFLAGS="-I$PREFIX/include"
export LDFLAGS="-L$PREFIX/lib"
export PKG_CONFIG=/usr/bin/pkg-config
export PKG_CONFIG_PATH="$PREFIX/lib/pkgconfig:$PREFIX/share/pkgconfig"
export XDG_DATA_DIRS="$PREFIX/share"
export ACLOCAL_FLAGS="-I $PREFIX/share/aclocal"

if [ "$BUILD" == "native" ] && [ "$ARCH" == "amd64" ]; then
	export LDFLAGS="$LDFLAGS -L$PREFIX/lib64"
elif [ "$BUILD" == "win64" ]; then
	export LDFLAGS="$LDFLAGS -L$PREFIX/lib64"
fi
