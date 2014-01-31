
cd ../../libs/01_libiconv
cd libiconv


echo Applying patch to use installed version of autotools...

cd ..
patch -p0 < Makefiledevel.patch
cd libiconv


echo Compile...

mkdir libcharset/autoconf
./autogen.sh
./configure --enable-static --disable-shared --prefix="$PREFIX"
make
make install
#make clean


cd ..
#rm -rf libiconv
