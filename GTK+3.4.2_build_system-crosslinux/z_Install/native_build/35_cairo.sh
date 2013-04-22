
cd ../../libs/35_cairo
tar xfvz cairo-1.10.2.tar.gz
cd cairo-1.10.2


echo Compile...

./configure --enable-png=yes --enable-ft=yes --enable-fc=yes --enable-static --disable-shared --prefix="$PREFIX"
make clean
make
make install


cd ..
rm -rf cairo-1.10.2
