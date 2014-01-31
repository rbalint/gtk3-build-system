
cd ../../libs/21_libffi
cd libffi


echo Compile...

./configure --enable-static --disable-shared --prefix="$PREFIX"
make
make install
#make clean


cd ..
#rm -rf libffi
