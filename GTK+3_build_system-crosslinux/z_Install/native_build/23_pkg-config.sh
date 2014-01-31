
cd ../../libs/23_pkg-config
cd pkg-config


echo Compile...

./autogen.sh --enable-static --disable-shared  --prefix="$PREFIX"
make
make install
#make clean


cd ..
#rm -rf pkg-config
