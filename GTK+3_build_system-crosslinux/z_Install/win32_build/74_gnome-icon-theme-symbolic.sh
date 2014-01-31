
cd ../../libs/74_gnome-icon-theme-symbolic
cd gnome-icon-theme-symbolic


echo Compile...

./autogen.sh --host=i686-pc-mingw32 --enable-static --enable-shared  --prefix="$PREFIX"
make 2>&1 | tee ../../../z_Install/win32_build/logs/73_gnome-icon-theme-symbolic-make.log
make install 2>&1 | tee ../../../z_Install/win32_build/logs/73_gnome-icon-theme-symbolic-makeinstall.log


cd ..
#rm -rf gnome-icon-theme-symbolic
