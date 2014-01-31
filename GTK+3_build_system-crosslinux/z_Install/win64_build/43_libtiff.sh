
cd ../../libs/43_libtiff
cd libtiff


echo Compile...

./configure --host=x86_64-w64-mingw32 --disable-cxx --enable-static --enable-shared  --prefix="$PREFIX"
make clean
make 2>&1 | tee ../../../z_Install/win64_build/logs/43_libtiff-make.log
make install 2>&1 | tee ../../../z_Install/win64_build/logs/43_libtiff-makeinstall.log


cd ..
#rm -rf libtiff
