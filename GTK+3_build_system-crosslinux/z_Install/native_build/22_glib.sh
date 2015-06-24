
cd ../../libs/22_glib
cd glib


echo Patch the .pc file

patch -p1 < ../glib20pc.patch

echo Compile...

./autogen.sh --enable-static --disable-shared --with-libiconv=gnu --prefix="$PREFIX"
make
make install
#make clean


cd ..
#rm -rf glib
