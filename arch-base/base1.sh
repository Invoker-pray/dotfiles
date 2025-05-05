cd ~

sudo pacman -S git cmake make xmake openssl openssh neovim go ninja clang python firefox docker nvidia nvidia-utils cuda zip unrar unzip 

mkdir git

cd git

git clone http://aur.archlinux.org/yay.git
# if this step lagging or wrong with timeout, please goto the directory of yay, modify the PKGBUILD, in the build section, add:
# export GO111MODULE = on
# export GOPROXY = https://goproxy.cn

cd yay

makepkg -si 

cd ~/git



git clone git@github.com:Invoker-pray/dotfiles.git

cd dotfiles

yay -S clash-verge-rev-bin



yay -S --needed - < pkgs_arch.txt



python -m venv python-venv

echo 'source ~/python-venv/bin/activate' >> .bashrc

pip install --upgrade pip

pip install -r python-requirements.txt

