
cd ../../libs/01_libiconv
tar xfvz libiconv-1.13.1.tar.gz
cd libiconv-1.13.1


echo Compile...

./configure --enable-static --disable-shared --prefix="$PREFIX"
make clean
make
make install


cd ..
rm -rf libiconv-1.13.1
