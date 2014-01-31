
cd ../../libs/32_libfreetype
cd freetype2


echo Compile...

./autogen.sh
./configure --enable-static --disable-shared  --prefix="$PREFIX"
make
make install
#make clean


cd ..
#rm -rf freetype2
