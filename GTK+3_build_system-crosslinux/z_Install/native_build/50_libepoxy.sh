
cd ../../libs/50_libepoxy
cd libepoxy


echo Compile...

./autogen.sh --enable-static --disable-shared --prefix="$PREFIX"
make
make install
#make clean


cd ..
#rm -rf libepoxy
