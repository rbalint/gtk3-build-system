
cd ../../libs/36_pango
cd pango


echo Compile...

./autogen.sh --with-included-modules=yes --with-dynamic-modules=yes --enable-static --disable-shared --prefix="$PREFIX"
make
make install
#make clean


cd ..
#rm -rf pango
