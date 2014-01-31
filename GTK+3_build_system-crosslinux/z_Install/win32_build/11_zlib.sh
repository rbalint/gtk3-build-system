
cd ../../libs/11_zlib
cd zlib


echo Patching the Makefile with the correct options

cd ..
patch -p0 < Makefile.patch
cd zlib

echo Compile...

make -fwin32/Makefile.gcc clean
make -fwin32/Makefile.gcc 2>&1 | tee ../../../z_Install/win32_build/logs/11_zlib-make.log

echo Install final files -including custom .pc- to their destination

cp zlib1.dll "$PREFIX/bin"
cp zconf.h "$PREFIX/include"
cp zlib.h "$PREFIX/include"
cp libz.a "$PREFIX/lib"
cp libz.dll.a "$PREFIX/lib"
cd ..
cp zlib.pc "$PREFIX/lib/pkgconfig/"



#rm -rf zlib
