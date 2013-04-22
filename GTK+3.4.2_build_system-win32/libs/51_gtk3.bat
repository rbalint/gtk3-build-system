
cd 51_gtk3
xz -d -k -f gtk+-3.4.2.tar.xz
tar -xf gtk+-3.4.2.tar
cd gtk+-3.4.2


echo Compile...

./configure --enable-win32-backend --with-included-immodules --prefix=$PREFIX
make clean
make 2>&1 | tee ../../logs/51_gtk3-make.log
make install 2>&1 | tee ../../logs/51_gtk3-makeinstall.log


cd ..
rm -rf gtk+-3.4.2
rm -f gtk+-3.4.2.tar