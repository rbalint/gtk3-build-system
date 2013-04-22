
cd ../../libs/52_gtk3
tar xfvJ gtk+-3.4.2.tar.xz
cd gtk+-3.4.2


echo Compile...

./configure --host=i686-pc-mingw32 --enable-win32-backend --with-included-immodules --enable-static --enable-shared  --prefix="$PREFIX"
make clean
make 2>&1 | tee ../../logs/52_gtk3.log
make install 2>&1 | tee ../../logs/52_gtk3-makeinstall.log


cd ..
rm -rf gtk+-3.4.2
