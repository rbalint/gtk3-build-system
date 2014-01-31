
cd ../../libs/32_libfreetype
cd freetype2


export LIBPNG_CFLAGS=`$PREFIX/bin/libpng-config --cflags`
export LIBPNG_LDFLAGS=`$PREFIX/bin/libpng-config --ldflags`

echo Compile...

./configure --host=x86_64-w64-mingw32 --enable-static --enable-shared  --prefix="$PREFIX"
make clean
make 2>&1 | tee ../../../z_Install/win64_build/logs/32_libfreetype-make.log
make install 2>&1 | tee ../../../z_Install/win64_build/logs/32_libfreetype-makeinstall.log


cd ..
#rm -rf freetype2
