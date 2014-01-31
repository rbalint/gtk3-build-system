
cd ../../libs/13_libxml2
cd libxml2


echo Compile...

./configure --host=i686-pc-mingw32 --enable-static --enable-shared --without-python --prefix="$PREFIX"
make clean
make 2>&1 | tee ../../../z_Install/win32_build/logs/13_libxml2-make.log
make install 2>&1 | tee ../../../z_Install/win32_build/logs/13_libxml2-makeinstall.log


cd ..
#rm -rf libxml2
