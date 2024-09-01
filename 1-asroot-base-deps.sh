apt install -y git wget xorg xz-utils build-essential unclutter flameshot xsettingsd

# some fonts and a theme
apt install -y fonts-liberation2 fonts-dejavu materia-gtk-theme

# for emacs build
apt install -y xorg-dev libjansson-dev libtree-sitter-dev libmagickwand-dev libgtk-3-dev libwebkit2gtk-4.0-dev libgnutls28-dev libsystemd-dev libgif-dev libncurses-dev texinfo libgccjit-12-dev libm17n-dev libotf-dev libxft-dev

# login manager & gui app root access
apt install -y lxpolkit lxdm

# for firefox
wget -q https://packages.mozilla.org/apt/repo-signing-key.gpg -O- | tee /etc/apt/keyrings/packages.mozilla.org.asc > /dev/null
gpg -n -q --import --import-options import-show /etc/apt/keyrings/packages.mozilla.org.asc | awk '/pub/{getline; gsub(/^ +| +$/,""); print "\n"$0"\n"}'
echo "deb [signed-by=/etc/apt/keyrings/packages.mozilla.org.asc] https://packages.mozilla.org/apt mozilla main" | sudo tee -a /etc/apt/sources.list.d/mozilla.list > /dev/null
apt update
apt install firefox
