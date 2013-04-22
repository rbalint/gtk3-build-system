
cd 36_pango
xz -d -k -f pango-1.30.0.tar.xz
tar -xf pango-1.30.0.tar
cd pango-1.30.0


echo Save current LDFLAGS var, we will regenerate it later...
export LDFLAGS_SAVE="$LDFLAGS"

echo Avoid undefined reference to g_object_unref errors...
export LDFLAGS="$LDFLAGS -lgobject-2.0 -lgmodule-2.0"

echo Compile...

./configure --with-included-modules=yes --with-dynamic-modules=yes --prefix=$PREFIX
make clean
make 2>&1 | tee ../../logs/36_pango-make.log
make install 2>&1 | tee ../../logs/36_pango-makeinstall.log


export LDFLAGS="$LDFLAGS_SAVE"
unset LDFLAGS_SAVE
cd ..
rm -rf pango-1.30.0
rm -f pango-1.30.0.tar