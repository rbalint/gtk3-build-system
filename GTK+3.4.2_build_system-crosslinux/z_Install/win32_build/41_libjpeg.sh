
cd ../../libs/41_libjpeg
tar xfvz jpegsrc.v8d.tar.gz
cd jpeg-8d


echo Compile...

./configure --host=i686-pc-mingw32 --enable-static --enable-shared  --prefix="$PREFIX"
make clean
make 2>&1 | tee ../../logs/41_libjpeg-make.log
make install 2>&1 | tee ../../logs/41_libjpeg-makeinstall.log


cd ..
rm -rf jpeg-8d
