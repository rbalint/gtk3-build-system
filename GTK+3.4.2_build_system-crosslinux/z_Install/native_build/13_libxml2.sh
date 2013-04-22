
cd ../../libs/13_libxml2
tar xfvz libxml2-2.8.0.tar.gz
cd libxml2-2.8.0


echo Compile...

./configure --enable-static --disable-shared --prefix="$PREFIX"
make clean
make
make install


cd ..
rm -rf libxml2-2.8.0
