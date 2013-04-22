
cd 62_librsvg
xz -d -k -f librsvg-2.36.1.tar.xz
tar -xf librsvg-2.36.1.tar
cd librsvg-2.36.1


echo Compile...

./configure --disable-gtk-theme --enable-pixbuf-loader --enable-introspection=no --prefix=$PREFIX
make clean
make 2>&1 | tee ../../logs/62_librsvg-make.log
make install 2>&1 | tee ../../logs/62_librsvg-makeinstall.log


cd ..
rm -rf librsvg-2.36.1
rm -f librsvg-2.36.1.tar
