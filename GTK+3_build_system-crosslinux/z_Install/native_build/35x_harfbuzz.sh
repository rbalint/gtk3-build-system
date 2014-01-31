
cd ../../libs/35x_harfbuzz
tar xfvj harfbuzz-0.9.16.tar.bz2
cd harfbuzz-0.9.16


echo Compile...

./configure --enable-static --disable-shared --prefix="$PREFIX"
make
make install
make clean


cd ..
rm -rf harfbuzz-0.9.16
