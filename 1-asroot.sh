apt install -y git wget xorg xz-utils build-essential unclutter flameshot xsettingsd cmake

apt install -y fonts-liberation2 fonts-dejavu materia-gtk-theme

apt install -y xorg-dev libjansson-dev libtree-sitter-dev libmagickwand-dev libgtk-3-dev libwebkit2gtk-4.0-dev libgnutls28-dev libsystemd-dev libgif-dev libncurses-dev texinfo libgccjit-12-dev libm17n-dev libotf-dev libxft-dev

apt install -y lxpolkit lxdm

mkdir build
cd build
wget http://ftp.gnu.org/gnu/emacs/emacs-30.1.tar.xz
tar -xf emacs-30.1.tar.xz
cd emacs-30.1
./configure --with-wide-int --with-modules --with-native-compilation=aot --with-tree-sitter --with-gif --with-png --with-jpeg --with-rsvg --with-tiff --with-imagemagick --with-xwidgets CFLAGS="-O2 -pipe -mtune=native -march=native -fomit-frame-pointer"
make -j $(nproc)
make install
