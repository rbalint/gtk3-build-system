
cd ../../libs/43_libtiff
cd libtiff


echo Compile...

./configure --host=i686-pc-mingw32 --enable-static --enable-shared --disable-cxx  --prefix="$PREFIX"
make clean
make 2>&1 | tee ../../../z_Install/win32_build/logs/43_libtiff-make.log
make install 2>&1 | tee ../../../z_Install/win32_build/logs/43_libtiff-makeinstall.log


cd ..
#rm -rf libtiff
