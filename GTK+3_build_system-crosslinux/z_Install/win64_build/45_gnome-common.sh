
cd ../../libs/45_gnome-common
cd gnome-common


echo Compile...

./configure --host=x86_64-w64-mingw32 --enable-static --enable-shared  --prefix="$PREFIX"
make clean
make 2>&1 | tee ../../../z_Install/win32_build/logs/45_gnome-common-make.log
make install 2>&1 | tee ../../../z_Install/win32_build/logs/45_gnome-common-makeinstall.log


cd ..
#rm -rf gnome-common
