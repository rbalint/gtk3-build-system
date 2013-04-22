
cd ../../libs/12_xz
tar xfvj xz-5.0.4.tar.bz2
cd xz-5.0.4


echo Compile...

./configure --enable-static --disable-shared --prefix="$PREFIX"
make clean
make
make install


cd ..
rm -rf xz-5.0.4
