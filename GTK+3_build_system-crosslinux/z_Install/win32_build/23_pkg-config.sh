
cd ../../libs/23_pkg-config
cd pkg-config


echo Compile...

./configure --host=i686-pc-mingw32 --enable-static --enable-shared  --prefix="$PREFIX"
make clean
make 2>&1 | tee ../../../z_Install/win32_build/logs/23_pkg-config-make.log
make install 2>&1 | tee ../../../z_Install/win32_build/logs/23_pkg-config-makeinstall.log


cd ..
#rm -rf pkg-config
