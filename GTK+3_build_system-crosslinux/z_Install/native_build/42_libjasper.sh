
cd ../../libs/42_libjasper
unzip -o jasper-1.900.1.zip
cd jasper-1.900.1


echo Compile...

./configure --enable-static --disable-shared  --prefix="$PREFIX"
make
make install
make clean


cd ..
rm -rf jasper-1.900.1


echo For libtiff later...

cp jmorecfg-truefalse.patch "$PREFIX/include"
cd "$PREFIX/include"
patch -p0 < jmorecfg-truefalse.patch
rm jmorecfg-truefalse.patch
