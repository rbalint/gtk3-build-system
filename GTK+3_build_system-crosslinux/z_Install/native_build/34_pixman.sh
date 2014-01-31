
cd ../../libs/34_pixman
cd pixman


echo Compile...

./autogen.sh --enable-static --disable-shared  --prefix="$PREFIX"
make
make install
#make clean


cd ..
#rm -rf pixman
