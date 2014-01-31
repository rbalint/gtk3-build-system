
cd ../../libs/43_libtiff
cd libtiff


echo Compile...

./configure --enable-static --disable-shared --disable-cxx --prefix="$PREFIX"
make
make install
#make clean


cd ..
#rm -rf libtiff
