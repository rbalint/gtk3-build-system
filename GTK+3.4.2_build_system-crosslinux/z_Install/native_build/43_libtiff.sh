
cd ../../libs/43_libtiff
tar xfvz tiff-4.0.2.tar.gz
cd tiff-4.0.2


echo Compile...

./configure -enable-static --disable-shared  --prefix="$PREFIX"
make clean
make
make install


cd ..
rm -rf tiff-4.0.2
