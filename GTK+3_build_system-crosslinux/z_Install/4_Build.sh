#!/bin/sh
set -e

# 1) native build, required for some tools needed during win32 build later
export BUILD=native

# Source variables here, please modify this script only
source ./vars.sh

# Compile native stack
cd native_build
./BUILD_ALL.sh
cd ..

# copy some of the necessary native tools to "cache" dir
cp "$PREFIX/bin/glib-genmarshal" cache/
cp "$PREFIX/bin/glib-compile-schemas" cache/
cp "$PREFIX/bin/glib-compile-resources" cache/
cp "$PREFIX/bin/gdk-pixbuf-query-loaders" cache/
cp "$PREFIX/bin/gtk-update-icon-cache" cache/
cp "$PREFIX/bin/gtk-query-immodules-3.0" cache/

# add "cache" dir to PATH
export PATH="$PATH:$PWD/cache"


# 2) win32 build
export BUILD=win32

# Source variables here, please modify this script only
source ./vars.sh

# Install needed DLLs for Wine
if [ "$DISTRO" == "CentOS6" ]; then
	cp -r /usr/i686-pc-mingw32/sys-root/mingw/bin/pthreadGC2.dll "$PREFIX/bin"
fi

# Compile win32 stack
cd win32_build
./BUILD_ALL.sh
cd ..


# 3) win64 build
export BUILD=win64

# Source variables here, please modify this script only
source ./vars.sh

# Install needed DLLs for Wine64
if [ "$DISTRO" == "CentOS6" ]; then
	cp -r /usr/x86_64-w64-mingw32/sys-root/mingw/bin/pthreadGC2.dll "$PREFIX/bin"
fi

# Compile win64 stack
cd win64_build
./BUILD_ALL.sh
cd ..

