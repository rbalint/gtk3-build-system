
cd ../../libs/21_libffi
tar xfvz libffi-3.0.10.tar.gz
cd libffi-3.0.10


echo Compile...

./configure --enable-static --disable-shared --prefix="$PREFIX"
make clean
make
make install


cd ..
rm -rf libffi-3.0.10
