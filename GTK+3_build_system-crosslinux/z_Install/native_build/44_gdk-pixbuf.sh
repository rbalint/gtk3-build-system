
cd ../../libs/44_gdk-pixbuf
cd gdk-pixbuf


echo Compile...

./autogen.sh --with-included-loaders --enable-glibtest=no --enable-static --disable-shared  --prefix="$PREFIX"
make
make install
#make clean


cd ..
#rm -rf gdk-pixbuf
