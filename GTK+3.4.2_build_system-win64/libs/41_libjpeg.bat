
cd 41_libjpeg
gzip -d -f -c jpegsrc.v8d.tar.gz > jpegsrc.v8d.tar
tar -xf jpegsrc.v8d.tar
cd jpeg-8d


echo Compile...

./configure --host=x86_64-w64-mingw32 --prefix=$PREFIX
make clean
make 2>&1 | tee ../../logs/41_libjpeg-make.log
make install 2>&1 | tee ../../logs/41_libjpeg-makeinstall.log


cd ..
rm -rf jpeg-8d
rm -f jpegsrc.v8d.tar