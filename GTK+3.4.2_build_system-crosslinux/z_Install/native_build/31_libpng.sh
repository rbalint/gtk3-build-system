
cd ../../libs/31_libpng
tar xfvJ libpng-1.5.11.tar.xz
cd libpng-1.5.11


echo Compile...

./configure --enable-static --disable-shared  --prefix="$PREFIX"
make clean
make
make install


cd ..
rm -rf libpng-1.5.11
