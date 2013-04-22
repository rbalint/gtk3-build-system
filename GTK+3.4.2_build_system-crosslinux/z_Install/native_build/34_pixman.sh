
cd ../../libs/34_pixman
tar xfvz pixman-0.26.0.tar.gz
cd pixman-0.26.0


echo Compile...

./configure --enable-static --disable-shared  --prefix="$PREFIX"
make clean
make
make install


cd ..
rm -rf pixman-0.26.0
