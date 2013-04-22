
cd 71_hicolor-icon-theme
gzip -d -f -c hicolor-icon-theme-0.12.tar.gz > hicolor-icon-theme-0.12.tar
tar -xf hicolor-icon-theme-0.12.tar
cd hicolor-icon-theme-0.12


echo Compile...

./configure --prefix=$PREFIX
make 2>&1 | tee ../../logs/71_hicolor-icon-theme-make.log
make install 2&1 > | tee ../../logs/71_hicolor-icon-theme-makeinstall.log


cd ..
rm -rf hicolor-icon-theme-0.12
rm -f hicolor-icon-theme-0.12.tar