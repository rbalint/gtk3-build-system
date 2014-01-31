
cd ../../libs/52_gtk3
cd gtk+


echo Patching the configure script to avoid gobject-introspection
echo and test-linking with Pango....

cd ..
#patch -p0 < lrn.patch
patch -p0 < configureac_pangolink-introspec.patch
patch -p0 < Makefileam-introspec.patch 
cd gtk+

echo Flags needed to compile..

#export LDFLAGS="$LDFLAGS -liconv"

echo Compile...

./autogen.sh --enable-broadway-backend --disable-modules --disable-glibtest --enable-static --disable-shared --prefix="$PREFIX"
make
make install
#make clean


cd ..
#rm -rf gtk+
