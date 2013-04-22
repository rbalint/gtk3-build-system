
cd ../../libs/23_pkg-config
tar xfvz pkg-config-0.27.tar.gz
cd pkg-config-0.27


echo Compile...

./configure --enable-static --disable-shared  --prefix="$PREFIX"
make clean
make
make install


cd ..
rm -rf pkg-config-0.27
