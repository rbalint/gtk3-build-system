
cd 35_cairo
gzip -d -f -c cairo-1.10.2.tar.gz > cairo-1.10.2.tar
tar -xf cairo-1.10.2.tar.gz
cd cairo-1.10.2


echo Patching source...

cd ..
patch -p0 < cairo-1.10.2-win32_surfaces.patch
cd cairo-1.10.2

echo Compile...

./configure --enable-win32=yes --enable-win32-font=yes --enable-png=yes --enable-ft=yes --enable-fc=yes --prefix=$PREFIX
make clean
make 2>&1 | tee ../../logs/35_cairo-make.log
make install 2>&1 | tee ../../logs/35_cairo-makeinstall.log

echo Copy cairo.def to its final location...

cp src/cairo.def $PREFIX/lib


cd ..
rm -rf cairo-1.10.2
rm -f cairo-1.10.2.tar