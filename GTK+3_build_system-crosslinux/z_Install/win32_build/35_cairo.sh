
cd ../../libs/35_cairo
cd cairo


echo Compile...

./configure --host=i686-pc-mingw32 --enable-win32=yes --enable-win32-font=yes --enable-png=yes --enable-ft=yes --enable-fc=yes --enable-xlib=no --enable-static --enable-shared --prefix="$PREFIX"
make clean
make 2>&1 | tee ../../../z_Install/win32_build/logs/35_cairo-make.log
make install 2>&1 | tee ../../../z_Install/win32_build/logs/35_cairo-makeinstall.log


cd ..
#rm -rf cairo
