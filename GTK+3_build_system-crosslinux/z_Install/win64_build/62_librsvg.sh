
cd ../../libs/62_librsvg
cd librsvg


echo Warning, the main script should have taken care of putting required native
echo utils like gdk-pixbuf-query-loaders in an accessible path. Otherwise, it will fail.

echo Compile...

./configure --host=x86_64-w64-mingw32 --disable-gtk-theme --enable-introspection=no --enable-static --enable-shared  --prefix="$PREFIX"
mv libtool libtool.old
cp ../libtool-amd64 libtool
make clean
make 2>&1 | tee ../../../z_Install/win64_build/logs/62_librsvg-make.log
make install 2>&1 | tee ../../../z_Install/win64_build/logs/62_librsvg-makeinstall.log


cd ..
#rm -rf librsvg
