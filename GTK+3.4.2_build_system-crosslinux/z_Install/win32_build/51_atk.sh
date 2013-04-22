
cd ../../libs/51_atk
tar xfvJ atk-2.4.0.tar.xz
cd atk-2.4.0


echo Compile...

./configure --host=i686-pc-mingw32 --enable-static --enable-shared  --prefix="$PREFIX"
make clean
make 2>&1 | tee ../../logs/51_atk-make.log
make install 2>&1 | tee ../../logs/51_atk-makeinstall.log


cd ..
rm -rf atk-2.4.0
