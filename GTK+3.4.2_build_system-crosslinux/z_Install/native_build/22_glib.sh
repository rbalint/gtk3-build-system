
cd ../../libs/22_glib
tar xfvJ glib-2.32.3.tar.xz
cd glib-2.32.3


echo Compile...

./configure --enable-static --disable-shared --with-libiconv=gnu --prefix="$PREFIX"
make clean
make
make install


cd ..
rm -rf glib-2.32.3
