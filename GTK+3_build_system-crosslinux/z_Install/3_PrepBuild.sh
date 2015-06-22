#!/bin/sh

# Source variables here, please modify this script only
source ./vars.sh


# Create both native & win32 target directory trees

mkdir "$NATIVEPREFIX"
mkdir "$NATIVEPREFIX/bin"
mkdir "$NATIVEPREFIX/etc"
mkdir "$NATIVEPREFIX/include"
mkdir "$NATIVEPREFIX/lib"
mkdir "$NATIVEPREFIX/lib/pkgconfig"
mkdir "$NATIVEPREFIX/share"

mkdir "$WIN32PREFIX"
mkdir "$WIN32PREFIX/bin"
mkdir "$WIN32PREFIX/etc"
mkdir "$WIN32PREFIX/include"
mkdir "$WIN32PREFIX/lib"
mkdir "$WIN32PREFIX/lib/pkgconfig"
mkdir "$WIN32PREFIX/share"

mkdir "$WIN64PREFIX"
mkdir "$WIN64PREFIX/bin"
mkdir "$WIN64PREFIX/etc"
mkdir "$WIN64PREFIX/include"
mkdir "$WIN64PREFIX/lib"
mkdir "$WIN64PREFIX/lib/pkgconfig"
mkdir "$WIN64PREFIX/share"








