
cd ../../libs/44_gdk-pixbuf
cd gdk-pixbuf


echo Compile...

./configure --host=x86_64-w64-mingw32 --with-included-loaders --enable-static --enable-shared  --prefix="$PREFIX"

mv libtool libtool.old
cp ../libtool-amd64 libtool

echo This one will not be cleaned and is still 32-bit
rm gdk-pixbuf/libgdiplus.dll.a

make clean
make 2>&1 | tee ../../../z_Install/win64_build/logs/44_gdk-pixbuf-make.log
make install 2>&1 | tee ../../../z_Install/win64_build/logs/44_gdk-pixbuf-makeinstall.log


cd ..
#rm -rf gdk-pixbuf
