
cd ../../libs/12_xz
cd xz

echo Compile...

./autogen.sh
./configure --enable-static --disable-shared --prefix="$PREFIX"
echo REQUIRED TO FIX DUE TO AUTOTOOLS VERSION
cd ..
patch -p0 < configh.patch
cd xz
echo FINISHED
make
make install
#make clean


cd ..
#rm -rf xz
