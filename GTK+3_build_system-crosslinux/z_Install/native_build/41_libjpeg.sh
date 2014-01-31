
cd ../../libs/41_libjpeg
tar xfvz jpegsrc.v9.tar.gz
cd jpeg-9


echo Compile...

./configure --enable-static --disable-shared  --prefix="$PREFIX"
make
make install
make clean


cd ..
rm -rf jpeg-9
