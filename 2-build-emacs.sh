mkdir build
cd build
wget http://ftp.gnu.org/gnu/emacs/emacs-29.4.tar.xz
tar -xf emacs-29.4.tar.xz
cd emacs-29.4
./configure --with-wide-int --with-modules --with-native-compilation=aot --with-json --with-tree-sitter --with-gif --with-png --with-jpeg --with-rsvg --with-tiff --with-imagemagick --with-xwidgets CFLAGS="-O2 -pipe -mtune=native -march=native -fomit-frame-pointer"
make -j $(nproc)
