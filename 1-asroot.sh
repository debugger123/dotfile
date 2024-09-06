apt install -y git wget xorg xz-utils build-essential unclutter flameshot xsettingsd

apt install -y fonts-liberation2 fonts-dejavu materia-gtk-theme

apt install -y xorg-dev libjansson-dev libtree-sitter-dev libmagickwand-dev libgtk-3-dev libwebkit2gtk-4.0-dev libgnutls28-dev libsystemd-dev libgif-dev libncurses-dev texinfo libgccjit-12-dev libm17n-dev libotf-dev libxft-dev

apt install -y lxpolkit lxdm

wget -q https://packages.mozilla.org/apt/repo-signing-key.gpg -O- | tee /etc/apt/keyrings/packages.mozilla.org.asc > /dev/null
gpg -n -q --import --import-options import-show /etc/apt/keyrings/packages.mozilla.org.asc | awk '/pub/{getline; gsub(/^ +| +$/,""); print "\n"$0"\n"}'
echo "deb [signed-by=/etc/apt/keyrings/packages.mozilla.org.asc] https://packages.mozilla.org/apt mozilla main" | sudo tee -a /etc/apt/sources.list.d/mozilla.list > /dev/null
apt update
apt install firefox

mkdir build
cd build
wget http://ftp.gnu.org/gnu/emacs/emacs-29.4.tar.xz
tar -xf emacs-29.4.tar.xz
cd emacs-29.4
./configure --with-wide-int --with-modules --with-native-compilation=aot --with-json --with-tree-sitter --with-gif --with-png --with-jpeg --with-rsvg --with-tiff --with-imagemagick --with-xwidgets CFLAGS="-O2 -pipe -mtune=native -march=native -fomit-frame-pointer"
make -j $(nproc)
make install
