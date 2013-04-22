
cd ../../libs/11_zlib
unzip -o zlib127.zip
cd zlib-1.2.7


echo Compile...

./configure --static --prefix="$PREFIX"
make clean
make
make install


cd ..
rm -rf zlib-1.2.7
