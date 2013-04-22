
cd ../../libs/02_gettext
tar xfvz gettext-0.18.2.1.tar.gz
cd gettext-0.18.2.1


echo Compile...

./configure --enable-static --disable-shared --prefix="$PREFIX"
make clean
make
make install


cd ..
rm -rf gettext-0.18.2.1
