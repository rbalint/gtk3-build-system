
cd ../../libs/36_pango
tar xfvJ pango-1.30.0.tar.xz
cd pango-1.30.0


echo Compile...

./configure --host=i686-pc-mingw32 --with-included-modules=yes --with-dynamic-modules=yes --enable-static --enable-shared --prefix="$PREFIX"
make clean
make 2>&1 | tee ../../logs/36_pango-make.log
make install 2>&1 | tee ../../logs/36_pango-makeinstall.log


cd ..
rm -rf pango-1.30.0
