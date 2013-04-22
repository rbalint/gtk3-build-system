
cd ../../libs/32_libfreetype
tar xfvj freetype-2.4.10.tar.bz2
cd freetype-2.4.10


echo Compile...

./configure --enable-static --disable-shared  --prefix="$PREFIX"
make clean
make
make install


cd ..
rm -rf freetype-2.4.10
