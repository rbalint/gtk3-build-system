
cd ../../libs/62_librsvg
cd librsvg


echo Warning, the main script should have taken care of putting required native
echo utils like gdk-pixbuf-query-loaders in an accessible path. Otherwise, it will fail.

echo Patching source to avoid the incompatible canonicalize_file_name fct

cd ..
patch -p0 < Makefileam-introspec.patch
patch -p0 < configurein-introspec.patch
patch -p0 < rsvgbasec-canonicalize.patch
cd librsvg

echo Compile...

./autogen.sh --host=i686-pc-mingw32 --disable-gtk-theme --enable-introspection=no --enable-static --enable-shared  --prefix="$PREFIX"
make 2>&1 | tee ../../../z_Install/win32_build/logs/62_librsvg-make.log
make install 2>&1 | tee ../../../z_Install/win32_build/logs/62_librsvg-makeinstall.log


cd ..
#rm -rf librsvg
