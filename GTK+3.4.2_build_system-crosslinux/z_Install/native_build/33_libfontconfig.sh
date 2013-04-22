
cd ../../libs/33_libfontconfig
tar xfvz fontconfig-2.9.0.tar.gz
cd fontconfig-2.9.0


echo Compile...

./configure --enable-static --disable-shared  --prefix="$PREFIX"
make clean
make
make install

echo Doc installation fails at the end, so we have to install the .pc file manually

cp fontconfig.pc "$PREFIX/lib/pkgconfig"


cd ..
rm -rf fontconfig-2.9.0
