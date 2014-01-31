
cd ../../libs/33_libfontconfig
cd fontconfig


echo Compile...

./autogen.sh --enable-static --disable-shared --enable-libxml2 --disable-docs --prefix="$PREFIX"
make
make install
#make clean


cd ..
#rm -rf fontconfig
