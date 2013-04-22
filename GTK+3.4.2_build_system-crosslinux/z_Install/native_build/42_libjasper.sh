
cd ../../libs/42_libjasper
unzip -o jasper-1.900.1.zip
cd jasper-1.900.1


echo Compile...

./configure --enable-static --disable-shared  --prefix="$PREFIX"
make clean
make
make install


cd ..
rm -rf jasper-1.900.1
