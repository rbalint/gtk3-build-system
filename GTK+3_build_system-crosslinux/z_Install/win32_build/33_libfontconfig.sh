
cd ../../libs/33_libfontconfig
cd fontconfig


echo Patch Makefile to do not build tests, which fail due to mixed
echo GCC/MinGW headers 

cd ..
patch -p0 < Makefileam-test.patch
cd fontconfig


echo Compile...

./configure --host=i686-pc-mingw32 --enable-static --enable-shared --enable-libxml2 --disable-docs --prefix="$PREFIX"
make clean
make 2>&1 | tee ../../../z_Install/win32_build/logs/33_libfontconfig-make.log
make install 2>&1 | tee ../../../z_Install/win32_build/logs/33_libfontconfig-makeinstall.log


cd ..
#rm -rf fontconfig
