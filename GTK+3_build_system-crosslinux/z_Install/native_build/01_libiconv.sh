
cd ../../libs/01_libiconv
cd libiconv


echo Applying patch to use installed version of autotools...

cd ..
patch -p0 < Makefiledevel.patch
cd libiconv

sed -i 's/GETTEXT_MACRO_VERSION = 0.18/GETTEXT_MACRO_VERSION = 0.19/' po/Makefile.in.in

echo Compile...

mkdir libcharset/autoconf
./autogen.sh
./configure --enable-static --disable-shared --prefix="$PREFIX"
make
make install
#make clean


cd ..
#rm -rf libiconv
