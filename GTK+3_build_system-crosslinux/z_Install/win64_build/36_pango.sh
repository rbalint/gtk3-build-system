
cd ../../libs/36_pango
cd pango


echo Compile...

./configure --host=x86_64-w64-mingw32 --with-included-modules=yes --with-dynamic-modules=yes --enable-static --enable-shared --prefix="$PREFIX"

mv libtool libtool.old
cp ../libtool-amd64 libtool

make clean
make 2>&1 | tee ../../../z_Install/win64_build/logs/36_pango-make.log
make install 2>&1 | tee ../../../z_Install/win64_build/logs/36_pango-makeinstall.log


cd ..
#rm -rf pango
