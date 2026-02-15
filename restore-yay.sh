sudo pacman -Syu
sudo pacman -S needed base-devel git
sudo pacman -S go
git clone http://aur.archlinux.org/yay.git
#git clone http://aur.archlinux.org/paru.git

cd yay
#cd paru

#if china:
#open the file PKGBUILD, add these two lines in the "export part":
#export GO111MODULE=on
#export GOPROXY=https://goproxy.cn

makepkg
makepkg -si
