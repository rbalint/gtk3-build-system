
cd ../../libs/02_gettext
cd gettext

# stick to latest release, master needs bison 3
git checkout v0.19.4

echo Compile...

./autogen.sh
./configure --enable-static --disable-shared --prefix="$PREFIX"
make
make install
#make clean


cd ..
#rm -rf gettext
