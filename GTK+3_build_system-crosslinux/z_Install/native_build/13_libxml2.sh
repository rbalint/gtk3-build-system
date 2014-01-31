
cd ../../libs/13_libxml2
cd libxml2


echo Compile...

./autogen.sh --enable-static --disable-shared --with-python=no --prefix="$PREFIX"
make
make install
#make clean


cd ..
#rm -rf libxml2
