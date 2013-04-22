
cd 11_libffi
gzip -d -f -c libffi-3.0.10.tar.gz > libffi-3.0.10.tar
tar -xf libffi-3.0.10.tar
cd libffi-3.0.10


./configure --host=x86_64-w64-mingw32 --prefix=$PREFIX

echo Correct libtool for the undefined symbols problem,
echo which prevents shared DLL creation

mv x86_64-w64-mingw32/libtool x86_64-w64-mingw32/libtool.old
cp ../libtool x86_64-w64-mingw32/libtool

echo Compile...

make clean
make 2>&1 | tee ../../logs/11_libffi-make.log
make install 2>&1 | tee ../../logs/11_libffi-makeinstall.log


cd ..
rm -rf libffi-3.0.10
rm -r libffi-3.0.10.tar