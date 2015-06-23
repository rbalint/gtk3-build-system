#!/bin/sh

set -e

sh -e ./01_libiconv.sh
sh -e ./02_gettext.sh
sh -e ./11_zlib.sh
sh -e ./12_xz.sh
sh -e ./13_libxml2.sh
sh -e ./21_libffi.sh
sh -e ./22_glib.sh
sh -e ./23_pkg-config.sh
sh -e ./31_libpng.sh
sh -e ./32_libfreetype.sh
sh -e ./33_libfontconfig.sh
sh -e ./34_pixman.sh
sh -e ./35_cairo.sh
sh -e ./35x_harfbuzz.sh
sh -e ./36_pango.sh
sh -e ./41_libjpeg.sh
sh -e ./42_libjasper.sh
sh -e ./43_libtiff.sh
sh -e ./44_gdk-pixbuf.sh
sh -e ./45_gnome-common.sh
sh -e ./51_atk.sh
sh -e ./52_gtk3.sh

echo Done !
