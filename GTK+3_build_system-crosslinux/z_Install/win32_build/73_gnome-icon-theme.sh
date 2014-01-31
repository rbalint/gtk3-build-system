
cd ../../libs/73_gnome-icon-theme
cd gnome-icon-theme


echo Compile...

./autogen.sh --host=i686-pc-mingw32 --enable-static --enable-shared  --prefix="$PREFIX"
make 2>&1 | tee ../../../z_Install/win32_build/logs/73_gnome-icon-theme-make.log
make install 2>&1 | tee ../../../z_Install/win32_build/logs/73_gnome-icon-theme-makeinstall.log


cd ..
#rm -rf gnome-icon-theme
