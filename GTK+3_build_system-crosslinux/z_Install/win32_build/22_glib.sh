
cd ../../libs/22_glib
cd glib



echo TEMPORARY FIX FOR MINGW32, RAND_S SUPPORT...
cd ..
patch -p0 < glib-rand_s-mingw.patch
cd glib

echo Warning, the main script should have taken care of putting required native
echo utils like glib-gennarshal in an accessible path. Otherwise, it will fail.

echo Save current compiler flags for later restoration

CFLAGS_SAVE="$CFLAGS"
CPPFLAGS_SAVE="$CPPFLAGS"

echo Add compiler flag needed to fix guint32 alignment detection at configure time

export CFLAGS="$CFLAGS -DSTDC_HEADERS"
export CPPFLAGS="$CPPFLAGS -DSTDC_HEADERS"

echo Add compiler flag needed to fix architecture detection at configure time

export CFLAGS="$CFLAGS -march=i486"
export CPPFLAGS="$CPPFLAGS -march=i486"

echo Add compiler flag needed to fix build problems

export CFLAGS="$CFLAGS -mms-bitfields -mthreads"
export CPPFLAGS="$CPPFLAGS -mms-bitfields -mthreads"

echo Compile...

./configure --host=i686-pc-mingw32 --with-pcre=internal --disable-static --enable-shared --disable-modular-tests --prefix="$PREFIX"
make clean
make 2>&1 | tee ../../../z_Install/win32_build/logs/22_glib-make.log
make install 2>&1 | tee ../../../z_Install/win32_build/logs/22_glib-makeinstall.log

echo Restore original compiler flags

export CFLAGS="$CFLAGS_SAVE"
export CPPFLAGS="$CPPFLAGS_SAVE"
unset CFLAGS_SAVE
unset CPPFLAGS_SAVE


cd ..
#rm -rf glib
