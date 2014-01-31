
cd ../../libs/36_pango
cd pango


echo Compile...

./configure --host=i686-pc-mingw32 --with-included-modules=yes --with-dynamic-modules=yes --enable-static --enable-shared --prefix="$PREFIX"
make clean
make 2>&1 | tee ../../../z_Install/win32_build/logs/36_pango-make.log
make install 2>&1 | tee ../../../z_Install/win32_build/logs/36_pango-makeinstall.log


cd ..
#rm -rf pango
