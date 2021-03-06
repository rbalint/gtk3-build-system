
cd ../../libs/13_libxml2
cd libxml2


echo Configure...

./configure --host=x86_64-w64-mingw32 --enable-static --enable-shared --with-python=no --prefix="$PREFIX"

echo Fix libtool to allow undefined symbols and build the DLL

mv libtool libtool.old
cp ../libtool-amd64 libtool

echo Compile...

make clean
make 2>&1 | tee ../../../z_Install/win64_build/logs/13_libxml2-make.log
make install 2>&1 | tee ../../../z_Install/win64_build/logs/13_libxml2-makeinstall.log


cd ..
#rm -rf libxml2
