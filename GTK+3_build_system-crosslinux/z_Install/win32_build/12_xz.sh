
cd ../../libs/12_xz
cd xz


echo Configure...

./configure --host=i686-pc-mingw32 --enable-static --enable-shared --disable-threads --prefix="$PREFIX"

echo REQUIRED TO FIX DUE TO AUTOTOOLS VERSION...

cd ..
patch -p0 < configh.patch
cd xz

echo Compile...

make clean
make 2>&1 | tee ../../../z_Install/win32_build/logs/12_xz-make.log
make install 2>&1 | tee ../../../z_Install/win32_build/logs/12_xz-makeinstall.log


cd ..
#rm -rf xz
