
cd ../../libs/52_gtk3
cd gtk+


echo Patching Makefiles to skip the defunct .def files generation

cd ..
patch -p0 < master-gxkdef-win32.patch
cd gtk+

echo Patching the configure file to use external gtk-update-icon-cache

cd ..
patch -p0 < gtk+-external_iconcache.patch
cd gtk+
export GTK_UPDATE_ICON_CACHE="$PWD/gtk/gtk-update-icon-cache"

echo Save current compiler flags for later restoration

export CFLAGS_SAVE="$CFLAGS"
export CPPFLAGS_SAVE="$CPPFLAGS"

echo Default Windows version on MinGW is NT4...
echo We need to redefine it as XP, as code uses XP-specific APIs

export CFLAGS="$CFLAGS -DWINVER=0x0501"
export CPPFLAGS="$CPPFLAGS -DWINVER=0x0501"

echo Needed for Broadway, use the libcrypt headers and library

export CFLAGS="$CFLAGS -I$PWD/../broadway/include"
export CPPFLAGS="$CPPFLAGS -I$PWD/../broadway/include"
export LDFLAGS="$LDFLAGS -L$PWD/../broadway/lib"

echo Needed for the new BUILD flag, defined even if we do not call it

export CC_FOR_BUILD="i686-pc-mingw32-gcc"
export CPP_FOR_BUILD="i686-pc-mingw32-gcc -E"
export CFLAGS_FOR_BUILD="$CFLAGS"
export CPPFLAGS_FOR_BUILD="$CPPFLAGS"
export LDFLAGS_FOR_BUILD="$LDFLAGS"

echo Putting some needed utilies in the right place, do no do make clean

cp ../../../z_Install/cache/gtk-update-icon-cache ./gtk/
cp ../../../z_Install/cache/gtk-query-immodules-3.0 ./gtk/


echo Compile...

./configure --host=i686-pc-mingw32 --enable-win32-backend --enable-broadway-backend --with-included-immodules --disable-glibtest --enable-static --enable-shared --prefix="$PREFIX"
make
make clean
cp ../../../z_Install/cache/gtk-update-icon-cache ./gtk/
cp ../../../z_Install/cache/gtk-query-immodules-3.0 ./gtk/
make 2>&1 | tee ../../../z_Install/win32_build/logs/52_gtk3-make.log
make install 2>&1 | tee ../../../z_Install/win32_build/logs/52_gtk3-makeinstall.log


echo Restore original compiler flags

export CFLAGS="$CFLAGS_SAVE"
export CPPFLAGS="$CPPFLAGS_SAVE"
unset CFLAGS_SAVE
unset CPPFLAGS_SAVE


cd ..
#rm -rf gtk+
