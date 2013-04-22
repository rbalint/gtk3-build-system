
cd 11_libffi
gzip -d -f -c libffi-3.0.10.tar.gz > libffi-3.0.10.tar
tar -xf libffi-3.0.10.tar
cd libffi-3.0.10


echo Compile...

./configure --prefix=$PREFIX
make clean
make 2>&1 | tee ../../logs/11_libffi-make.log
make install 2>&1 | tee ../../logs/11_libffi-makeinstall.log


cd ..
rm -rf libffi-3.0.10
rm -r libffi-3.0.10.tar