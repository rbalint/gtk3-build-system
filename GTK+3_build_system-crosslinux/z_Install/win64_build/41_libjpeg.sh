
cd ../../libs/41_libjpeg
tar xfvz jpegsrc.v9.tar.gz
cd jpeg-9


echo Compile...

./configure --host=x86_64-w64-mingw32 --enable-static --enable-shared  --prefix="$PREFIX"
make clean
make 2>&1 | tee ../../../z_Install/win64_build/logs/41_libjpeg-make.log
make install 2>&1 | tee ../../../z_Install/win64_build/logs/41_libjpeg-makeinstall.log


cd ..
rm -rf jpeg-9
