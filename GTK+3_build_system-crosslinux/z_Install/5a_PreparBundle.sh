#!/bin/sh

# fix needed for wine because "winbuilder" user has no HOME directory...
export HOME=/srv/win32builder

export BUILD=win32

# Source variables here, please modify this script only
source ./vars.sh


# delete unneeded files

rm -f "$PREFIX/bin/bmp2tiff.exe"
rm -f "$PREFIX/bin/cjpeg.exe"
rm -f "$PREFIX/bin/djpeg.exe"
rm -f "$PREFIX/bin/csslint-0.6.exe"
rm -f "$PREFIX/bin/fax2ps.exe"
rm -f "$PREFIX/bin/fax2tiff.exe"
rm -f "$PREFIX/bin/gif2tiff.exe"
rm -f "$PREFIX/bin/i686-pc-mingw32-pkg-config.exe"
rm -f "$PREFIX/bin/iconv.exe"
rm -f "$PREFIX/bin/imgcmp.exe"
rm -f "$PREFIX/bin/imginfo.exe"
rm -f "$PREFIX/bin/jasper.exe"
rm -f "$PREFIX/bin/jpegtran.exe"
rm -f "$PREFIX/bin/lz"*
rm -f "$PREFIX/bin/msg"*.exe
rm -f "$PREFIX/bin/pal2rgb.exe"
rm -f "$PREFIX/bin/"*2tiff.exe
rm -f "$PREFIX/bin/rdjpgcom.exe"
rm -f "$PREFIX/bin/recode-sr-latin.exe"
rm -f "$PREFIX/bin/rgb2ycbcr.exe"
rm -f "$PREFIX/bin/rsvg-convert.exe"
rm -f "$PREFIX/bin/rsvg-view-3.exe"
rm -f "$PREFIX/bin/thumbnail.exe"
rm -f "$PREFIX/bin/tiff"*.exe
rm -f "$PREFIX/bin/tmrdemo.exe"
rm -f "$PREFIX/bin/unlzma.exe"
rm -f "$PREFIX/bin/unxz.exe"
rm -f "$PREFIX/bin/wrjpgcom.exe"
rm -f "$PREFIX/bin/xgettext.exe"
rm -f "$PREFIX/bin/xmlcatalog.exe"
rm -f "$PREFIX/bin/xz"*

rm -f "$PREFIX/bin/libasprintf-0.dll"
rm -f "$PREFIX/bin/libcharset-1.dll"
rm -f "$PREFIX/bin/libgettextlib-0-18-2.dll"
rm -f "$PREFIX/bin/libgettextpo-0.dll"
rm -f "$PREFIX/bin/libgettextsrc-0-18-2.dll"
rm -f "$PREFIX/lib/libasprintf.dll.a"
rm -f "$PREFIX/lib/libcharset.dll.a"
rm -f "$PREFIX/lib/libgettextlib.dll.a"
rm -f "$PREFIX/lib/libgettextpo.dll.a"
rm -f "$PREFIX/lib/libgettextsrc.dll.a"

rm -rf "$PREFIX/lib/gettext"
rm -rf "$PREFIX/lib/locale"
rm -f "$PREFIX/lib/charset.alias"
rm -f "$PREFIX/lib/GNU.Gettext.dll"
rm -f "$PREFIX/lib/"*.la
rm -f "$PREFIX/lib/libasprintf.a"
rm -f "$PREFIX/lib/libatk-1.0.a"
rm -f "$PREFIX/lib/libcairo.a"
rm -f "$PREFIX/lib/libcairo-gobject.a"
rm -f "$PREFIX/lib/libcairo-script-interpreter.a"
rm -f "$PREFIX/lib/libcharset.a"
rm -f "$PREFIX/lib/libcroco-0.6.a"
rm -f "$PREFIX/lib/libffi.a"
rm -f "$PREFIX/lib/libfontconfig.a"
rm -f "$PREFIX/lib/libfreetype.a"
rm -f "$PREFIX/lib/libgettextpo.a"
rm -f "$PREFIX/lib/libiconv.a"
rm -f "$PREFIX/lib/libintl.a"
rm -f "$PREFIX/lib/libjasper.a"
rm -f "$PREFIX/lib/libjpeg.a"
rm -f "$PREFIX/lib/liblzma.a"
rm -f "$PREFIX/lib/libpixman-1.a"
rm -f "$PREFIX/lib/libpng.a"
rm -f "$PREFIX/lib/libpng15.a"
rm -f "$PREFIX/lib/librsvg-2.a"
rm -f "$PREFIX/lib/libtiff.a"
rm -f "$PREFIX/lib/libtiffxx.a"
rm -f "$PREFIX/lib/libxml2.a"
rm -f "$PREFIX/lib/libz.a"
rm -f "$PREFIX/lib/gdk-pixbuf-2.0/2.10.0/loaders/"*.la
rm -f "$PREFIX/lib/gdk-pixbuf-2.0/2.10.0/loaders/libpixbufloader-svg.a"
mkdir -p "$PREFIX/lib/gtk-3.0/3.0.0/immodules"
rm -f "$PREFIX/lib/gtk-3.0/3.0.0/immodules/"*.la
mkdir -p "$PREFIX/lib/pango/1.6.0/modules"
rm -f "$PREFIX/lib/pango/1.6.0/modules/"*.la

rm -rf "$PREFIX/libexec"
rm -rf "$PREFIX/man"

rm -rf "$PREFIX/share/doc/gettext"
rm -rf "$PREFIX/share/doc/libasprintf"
rm -rf "$PREFIX/share/doc/libiconv"
rm -rf "$PREFIX/share/emacs"
rm -rf "$PREFIX/share/gettext"
rm -rf "$PREFIX/share/dtds"
rm -rf "$PREFIX/share/icon-naming-utils"
#rm -rf "$PREFIX/share/icons/gnome"
rm -rf "$PREFIX/share/info"
rm -f "$PREFIX/share/locale/cs/LC_MESSAGES/xz.mo"
rm -f "$PREFIX/share/locale/de/LC_MESSAGES/xz.mo"
rm -f "$PREFIX/share/locale/fr/LC_MESSAGES/xz.mo"
rm -f "$PREFIX/share/locale/it/LC_MESSAGES/xz.mo"
rm -f "$PREFIX/share/locale/pl/LC_MESSAGES/xz.mo"
rm -f "$PREFIX/share/man/man1/bmp2tiff.1"
rm -f "$PREFIX/share/man/man1/cjpeg.1"
rm -f "$PREFIX/share/man/man1/djpeg.1"
rm -f "$PREFIX/share/man/man1/fax2ps.1"
rm -f "$PREFIX/share/man/man1/fax2tiff.1"
rm -f "$PREFIX/share/man/man1/gif2tiff.1"
rm -f "$PREFIX/share/man/man1/iconv.1"
rm -f "$PREFIX/share/man/man1/jpegtran.1"
rm -f "$PREFIX/share/man/man1/lz"*.1
rm -f "$PREFIX/share/man/man1/msg"*.1
rm -f "$PREFIX/share/man/man1/pal2rgb.1"
rm -f "$PREFIX/share/man/man1/"*2tiff.1
rm -f "$PREFIX/share/man/man1/rdjpgcom.1"
rm -f "$PREFIX/share/man/man1/recode-sr-latin.1"
rm -f "$PREFIX/share/man/man1/rgb2ycbcr.1"
rm -f "$PREFIX/share/man/man1/rsvg-convert.1"
rm -f "$PREFIX/share/man/man1/thumbnail.1"
rm -f "$PREFIX/share/man/man1/tiff"*.1
rm -f "$PREFIX/share/man/man1/unlzma.1"
rm -f "$PREFIX/share/man/man1/unxz.1"
rm -f "$PREFIX/share/man/man1/wrjpgcom.1"
rm -f "$PREFIX/share/man/man1/xgettext.1"
rm -f "$PREFIX/share/man/man1/xmlcatalog.1"
rm -f "$PREFIX/share/man/man1/xmllint.1"
rm -f "$PREFIX/share/man/man1/xz"*.1
rm -rf "$PREFIX/share/man/man3"
rm -rf "$PREFIX/share/man/man5"
rm -rf "$PREFIX/share/pkgconfig"


# generate some default configuration files
cp -f /usr/i686-pc-mingw32/sys-root/mingw/bin/pthreadGC2.dll "$PREFIX/bin"
wine "$PREFIX/bin/gtk-query-immodules-3.0.exe" > "$PREFIX/lib/gtk-3.0/3.0.0/immodules.cache"
wine "$PREFIX/bin/gdk-pixbuf-query-loaders.exe" > "$PREFIX/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache"
mkdir "$PREFIX/etc/pango"
wine "$PREFIX/bin/pango-querymodules.exe" > "$PREFIX/etc/pango/pango.modules"
cp "$BUILD"_bundle/settings.ini "$PREFIX/etc/gtk-3.0"

# add licensing information
cp -rf "$BUILD"_bundle/doc/* "$PREFIX/share/doc"

# add "gnome-light" theme used by "gtk3-demo" and "gtk3-widget-factory"
#cp -rf "$BUILD"_bundle/icons/* "$PREFIX/share/icons"

# generate MSVC import libraries
wine "$BUILD"_bundle/lib.exe /def:"$PREFIX/lib/atk-1.0.def" /name:"$PREFIX/bin/libatk-1.0-0.dll" /out:"$PREFIX/lib/atk-1.0.lib"
wine "$BUILD"_bundle/lib.exe /def:"$PREFIX/lib/cairo.def" /name:"$PREFIX/bin/libcairo-2.dll" /out:"$PREFIX/lib/cairo.lib"
wine "$BUILD"_bundle/lib.exe /def:"$PREFIX/lib/fontconfig.def" /name:"$PREFIX/bin/libfontconfig-1.dll" /out:"$PREFIX/lib/fontconfig.lib"
wine "$BUILD"_bundle/lib.exe /def:"$PREFIX/lib/gailutil.def" /name:"$PREFIX/bin/libgailutil-3-0.dll" /out:"$PREFIX/lib/gailutil.lib"
wine "$BUILD"_bundle/lib.exe /def:"$PREFIX/lib/gdk-win32-3.0.def" /name:"$PREFIX/bin/libgdk-3-0.dll" /out:"$PREFIX/lib/gdk-win32-3.0.lib"
wine "$BUILD"_bundle/lib.exe /def:"$PREFIX/lib/gdk_pixbuf-2.0.def" /name:"$PREFIX/bin/libgdk_pixbuf-2.0-0.dll" /out:"$PREFIX/lib/gdk_pixbuf-2.0.lib"
wine "$BUILD"_bundle/lib.exe /def:"$PREFIX/lib/gio-2.0.def" /name:"$PREFIX/bin/libgio-2.0-0.dll" /out:"$PREFIX/lib/gio-2.0.lib"
wine "$BUILD"_bundle/lib.exe /def:"$PREFIX/lib/glib-2.0.def" /name:"$PREFIX/bin/libglib-2.0-0.dll" /out:"$PREFIX/lib/glib-2.0.lib"
wine "$BUILD"_bundle/lib.exe /def:"$PREFIX/lib/gmodule-2.0.def" /name:"$PREFIX/bin/libgmodule-2.0-0.dll" /out:"$PREFIX/lib/gmodule-2.0.lib"
wine "$BUILD"_bundle/lib.exe /def:"$PREFIX/lib/gobject-2.0.def" /name:"$PREFIX/bin/libgobject-2.0-0.dll" /out:"$PREFIX/lib/gobject-2.0.lib"
wine "$BUILD"_bundle/lib.exe /def:"$PREFIX/lib/gthread-2.0.def" /name:"$PREFIX/bin/libgthread-2.0-0.dll" /out:"$PREFIX/lib/gthread-2.0.lib"
wine "$BUILD"_bundle/lib.exe /def:"$PREFIX/lib/gtk-win32-3.0.def" /name:"$PREFIX/bin/libgtk-3-0.dll" /out:"$PREFIX/lib/gtk-win32-3.0.lib"
wine "$BUILD"_bundle/lib.exe /def:"$PREFIX/lib/pango-1.0.def" /name:"$PREFIX/bin/libpango-1.0-0.dll" /out:"$PREFIX/lib/pango-1.0.lib"
wine "$BUILD"_bundle/lib.exe /def:"$PREFIX/lib/pangocairo-1.0.def" /name:"$PREFIX/bin/libpangocairo-1.0-0.dll" /out:"$PREFIX/lib/pangocairo-1.0.lib"
wine "$BUILD"_bundle/lib.exe /def:"$PREFIX/lib/pangoft2-1.0.def" /name:"$PREFIX/bin/libpangoft2-1.0-0.dll" /out:"$PREFIX/lib/pangoft2-1.0.lib"
wine "$BUILD"_bundle/lib.exe /def:"$PREFIX/lib/pangowin32-1.0.def" /name:"$PREFIX/bin/libpangowin32-1.0-0.dll" /out:"$PREFIX/lib/pangowin32-1.0.lib"
rm -f "$PREFIX/lib/"*.exp

# copy the build scripts
mkdir -p "$PREFIX/src/tarnyko/scripts"
cp -f "$BUILD"_build/*.sh "$PREFIX/src/tarnyko/scripts"

# copy the logs
mkdir -p "$PREFIX/src/tarnyko/scripts/logs"
cp -f "$BUILD"_build/logs/*.log "$PREFIX/src/tarnyko/scripts/logs"

# copy the README
cp -f "$BUILD"_bundle/gtk+-bundle_continuous-XXXXXXXX_"$BUILD".README.txt "$PREFIX/gtk+-bundle_continuous-`date +%Y%m%d`_"$BUILD".README.txt"

# generate the manifest file
mkdir "$PREFIX/manifest"
rm -f "$PREFIX/manifest/"*.mft
tree "$PREFIX" > "$PREFIX"/manifest/gtk+-bundle_CONTINUOUS_DEBUG-`date +%Y%m%d`_"$BUILD".mft

# zip the whole thing
cd "$PREFIX"
zip -r gtk+-bundle_CONTINUOUS_DEBUG-`date +%Y%m%d`_"$BUILD".zip bin/ etc/ include/ lib/ manifest/ share/ src/ gtk+-bundle_continuous-XXXXXXXX_"$BUILD".README.txt
mv -f gtk+-bundle_CONTINUOUS_DEBUG-`date +%Y%m%d`_win32.zip /srv/win32builder/releases
