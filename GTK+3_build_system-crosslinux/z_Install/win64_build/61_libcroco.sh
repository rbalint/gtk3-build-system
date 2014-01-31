
cd ../../libs/61_libcroco
cd libcroco


echo Compile...

./configure --host=x86_64-w64-mingw32 --enable-static --enable-shared  --prefix="$PREFIX"
mv libtool libtool.old
cp ../libtool-amd64 libtool
make clean
make 2>&1 | tee ../../../z_Install/win64_build/logs/61_libcroco-make.log
make install 2>&1 | tee ../../../z_Install/win64_build/logs/61_libcroco-makeinstall.log


cd ..
#rm -rf libcroco
