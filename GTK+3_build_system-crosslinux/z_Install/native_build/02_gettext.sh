
cd ../../libs/02_gettext
cd gettext


echo Compile...

./autogen.sh
./configure --enable-static --disable-shared --prefix="$PREFIX"
make
make install
#make clean


cd ..
#rm -rf gettext
