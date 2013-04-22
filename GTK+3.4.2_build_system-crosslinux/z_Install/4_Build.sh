#!/bin/sh


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
cp "$PREFIX/bin/gdk-pixbuf-loaders" cache/

# add "cache" dir to PATH
export PATH="$PATH:$PWD/cache"


# 2) win32 build
export BUILD=win32

# Source variables here, please modify this script only
source ./vars.sh

# Compile win32 stack
cd win32_build
./BUILD_ALL.sh
cd ..
