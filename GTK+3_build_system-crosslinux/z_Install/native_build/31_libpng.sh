
cd ../../libs/31_libpng
cd libpng


echo Applying patch to use installed version of autotools and gettext

cd ..
patch -p0 < configureac.patch
cd libpng

echo Compile...

./autogen.sh
./configure --enable-static --disable-shared  --prefix="$PREFIX"
make
make install
#make clean


cd ..
#rm -rf libpng
