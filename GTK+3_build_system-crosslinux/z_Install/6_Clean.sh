source ./vars.sh
rm -rf "$NATIVEPREFIX"
rm -rf "$WIN32PREFIX"
rm -rf "$WIN64PREFIX"

rm -rf ../libs/01_libiconv/libiconv
rm -rf ../libs/02_gettext/gettext
rm -rf ../libs/11_zlib/zlib
rm -rf ../libs/12_xz/xz
rm -rf ../libs/13_libxml2/libxml2
rm -rf ../libs/21_libffi/libffi
rm -rf ../libs/22_glib/glib
rm -rf ../libs/22_glib/glib
rm -rf ../libs/23_pkg-config/pkg-config
rm -rf ../libs/31_libpng/libpng
rm -rf ../libs/32_libfreetype/freetype2
rm -rf ../libs/33_libfontconfig/fontconfig
rm -rf ../libs/34_pixman/pixman
rm -rf ../libs/35_cairo/cairo
rm -rf ../libs/36_pango/pango
rm -rf ../libs/43_libtiff/libtiff
rm -rf ../libs/44_gdk-pixbuf/gdk-pixbuf
rm -rf ../libs/45_gnome-common/gnome-common
rm -rf ../libs/51_atk/atk
rm -rf ../libs/52_gtk3/gtk+
rm -rf ../libs/61_libcroco/libcroco
rm -rf ../libs/62_librsvg/librsvg
rm -rf ../libs/73_gnome-icon-theme/gnome-icon-theme
rm -rf ../libs/74_gnome-icon-theme-symbolic/gnome-icon-theme-symbolic

cd win32_build/logs/
rm -rf *
cd ../..

cd win64_build/logs/
rm -rf *
cd ../..

cd cache/
rm -rf *
cd ..
