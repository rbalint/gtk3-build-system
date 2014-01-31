
cd ../../libs/11_zlib
cd zlib


echo Compile...

./configure --static --prefix="$PREFIX"
make
make install
#make clean


cd ..
#rm -rf zlib
