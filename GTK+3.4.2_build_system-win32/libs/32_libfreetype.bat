
cd 32_libfreetype
bzip2 -d -k -f freetype-2.4.10.tar.bz2
tar -xf freetype-2.4.10.tar
cd freetype-2.4.10


echo Compile...

./configure --prefix=$PREFIX
make clean
make 2>&1 | tee ../../logs/32_libfreetype-make.log
make install 2>&1 | tee  ../../logs/32_libfreetype-makeinstall.log


cd ..
rm -rf freetype-2.4.10
rm -f freetype-2.4.10.tar