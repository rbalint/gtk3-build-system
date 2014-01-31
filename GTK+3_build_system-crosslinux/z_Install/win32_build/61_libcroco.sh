
cd ../../libs/61_libcroco
cd libcroco


echo Compile...

./autogen.sh --host=i686-pc-mingw32 --enable-static --enable-shared  --prefix="$PREFIX"
make 2>&1 | tee ../../../z_Install/win32_build/logs/61_libcroco-make.log
make install 2>&1 | tee ../../../z_Install/win32_build/logs/61_libcroco-makeinstall.log


cd ..
#rm -rf libcroco
