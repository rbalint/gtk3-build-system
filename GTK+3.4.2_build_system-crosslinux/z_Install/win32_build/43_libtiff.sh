
cd ../../libs/43_libtiff
tar xfvz tiff-4.0.2.tar.gz
cd tiff-4.0.2


echo Compile...

./configure --host=i686-pc-mingw32 --enable-static --enable-shared  --prefix="$PREFIX"
make clean
make 2>&1 | tee ../../logs/43_libtiff-make.log
make install 2>&1 | tee ../../logs/43_libtiff-makeinstall.log


cd ..
rm -rf tiff-4.0.2
