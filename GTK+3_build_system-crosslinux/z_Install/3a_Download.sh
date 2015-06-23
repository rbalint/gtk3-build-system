#!/bin/bash

set -e

IFS=","
for LIB in 01_libiconv,git://git.savannah.gnu.org/libiconv.git,libiconv \
               02_gettext,git://git.savannah.gnu.org/gettext.git,gettext \
               11_zlib,https://github.com/madler/zlib,zlib \
               12_xz,http://git.tukaani.org/xz.git,xz \
               13_libxml2,git://git.gnome.org/libxml2,libxml2 \
               21_libffi,https://github.com/atgreen/libffi.git,libffi \
               22_glib,git://git.gnome.org/glib,glib \
               23_pkg-config,git://anongit.freedesktop.org/pkg-config,pkg-config \
               31_libpng,git://git.code.sf.net/p/libpng/code,libpng \
               32_libfreetype,git://git.sv.gnu.org/freetype/freetype2.git,freetype2 \
               33_libfontconfig,git://anongit.freedesktop.org/fontconfig,fontconfig \
               34_pixman,git://anongit.freedesktop.org/pixman,pixman \
               35_cairo,git://anongit.freedesktop.org/cairo,cairo \
               36_pango,git://git.gnome.org/pango,pango \
               43_libtiff,https://github.com/LuaDist/libtiff,libtiff \
               44_gdk-pixbuf,git://git.gnome.org/gdk-pixbuf,gdk-pixbuf \
               45_gnome-common,git://git.gnome.org/gnome-common,gnome-common \
               51_atk,git://git.gnome.org/atk,atk \
               52_gtk3,git://git.gnome.org/gtk+,gtk+ \
               61_libcroco,git://git.gnome.org/libcroco,libcroco \
               62_librsvg,git://git.gnome.org/librsvg,librsvg \
               73_gnome-icon-theme,git://git.gnome.org/gnome-icon-theme,gnome-icon-theme \
               74_gnome-icon-theme-symbolic,git://git.gnome.org/gnome-icon-theme-symbolic,gnome-icon-theme-symbolic; do
    set $LIB
    if ! test -d ../../libs/$1; then
        mkdir ../../libs/$1
    fi
    (cd ../../libs/$1
    if ! test -d $3; then
        git clone $2 $3
    fi)
done

echo Done !
