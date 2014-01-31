
cd ../../libs/35_cairo
cd cairo


echo Compile...

./autogen.sh --enable-png=yes --enable-ft=yes --enable-fc=yes --enable-static --disable-shared --prefix="$PREFIX"
make
make install
make clean


cd ..
#rm -rf cairo
