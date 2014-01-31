
cd ../../libs/51_atk
cd atk


echo Compile...

./autogen.sh --enable-static --disable-shared  --disable-glibtest --prefix="$PREFIX"
make
make install
#make clean


cd ..
#rm -rf atk
