
cd ../../libs/34_pixman
cd pixman


echo Compile...

./configure --host=x86_64-w64-mingw32 --disable-sse2 --enable-static --enable-shared  --prefix="$PREFIX"

mv libtool libtool.old
cp ../libtool-amd64 libtool

make clean
make 2>&1 | tee ../../../z_Install/win64_build/logs/34_pixman-make.log
make install 2>&1 | tee ../../../z_Install/win64_build/logs/34_pixman-makeinstall.log


cd ..
#rm -rf pixman
