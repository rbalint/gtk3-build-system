
cd ../../libs/33_libfontconfig
tar xfvz fontconfig-2.9.0.tar.gz
cd fontconfig-2.9.0


echo Compile...

./configure --host=i686-pc-mingw32 --enable-static --enable-shared  --prefix="$PREFIX"
make clean
make 2>&1 | tee ../../logs/33_libfontconfig-make.log
make install 2>&1 | tee ../../logs/33_libfontconfig-makeinstall.log

echo Doc installation fails at the end, so we have to install the .pc file manually

cp fontconfig.pc "$PREFIX/lib/pkgconfig"


cd ..
rm -rf fontconfig-2.9.0
