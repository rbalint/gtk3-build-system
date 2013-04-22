
cd ../../libs/44_gdk-pixbuf
tar xfvJ gdk-pixbuf-2.26.1.tar.xz
cd gdk-pixbuf-2.26.1


echo Save current linker flags for later restoration

LDFLAGS_SAVE="$LDFLAGS"

echo Add linker flag needed to compile with libtiff even if we deactive in configure

export LDFLAGS="$LDFLAGS -ltiff"

echo Compile...

./configure --with-included-loaders --enable-glibtest=no --without-libtiff --enable-static --disable-shared  --prefix="$PREFIX"
make clean
make
make install

echo Restore original compiler flags

export LDFLAGS="LDFLAGS_SAVE"
unset LDFLAGS_SAVE


cd ..
rm -rf gdk-pixbuf-2.26.1
