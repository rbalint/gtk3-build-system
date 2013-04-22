
cd ../../libs/36_pango
tar xfvJ pango-1.30.0.tar.xz
cd pango-1.30.0


echo Compile...

./configure --with-included-modules=yes --with-dynamic-modules=yes --enable-static --disable-shared --prefix="$PREFIX"
make clean
make
make install


cd ..
rm -rf pango-1.30.0
