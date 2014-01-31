
cd ../../libs/12_xz
cd xz


echo Configure...

./configure --host=x86_64-w64-mingw32 --enable-static --enable-shared --prefix="$PREFIX"

echo REQUIRED TO FIX DUE TO AUTOTOOLS VERSION

cd ..
patch -p0 < configh.patch 
cd xz

echo Compile...

make clean
make 2>&1 | tee ../../../z_Install/win64_build/logs/12_xz-make.log
make install 2>&1 | tee ../../../z_Install/win64_build/logs/12_xz-makeinstall.log


cd ..
#rm -rf xz
