
cd ../../libs/35x_harfbuzz
cd harfbuzz

# Tested version
# TODO switch to master?
git checkout 0.9.17

echo Compile...

./autogen.sh
./configure --enable-static --disable-shared --prefix="$PREFIX"
make
make install
make clean


cd ..
#rm -rf harfbuzz
