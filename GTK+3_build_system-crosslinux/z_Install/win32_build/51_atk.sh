
cd ../../libs/51_atk
cd atk


echo Compile...

./configure --host=i686-pc-mingw32 --enable-static --enable-shared  --disable-glibtest --prefix="$PREFIX"
make clean
make 2>&1 | tee ../../../z_Install/win32_build/logs/51_atk-make.log
make install 2>&1 | tee ../../../z_Install/win32_build/logs/51_atk-makeinstall.log


cd ..
#rm -rf atk
