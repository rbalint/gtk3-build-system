
cd ../../libs/45_gnome-common
cd gnome-common


echo Compile...

./autogen.sh --enable-static --disable-shared  --prefix="$PREFIX"
make
make install
#make clean


cd ..
#rm -rf gnome-common
