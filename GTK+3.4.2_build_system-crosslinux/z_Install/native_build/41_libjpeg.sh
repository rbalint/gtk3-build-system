
cd ../../libs/41_libjpeg
tar xfvz jpegsrc.v8d.tar.gz
cd jpeg-8d


echo Compile...

./configure --enable-static --disable-shared  --prefix="$PREFIX"
make clean
make
make install


cd ..
rm -rf jpeg-8d
