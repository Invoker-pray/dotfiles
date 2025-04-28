sudo pacman -Syu

sudo pacman -S git gcc cmake make ninja nvim go


cd ~
mkdir temp
cd temp


git clone https://github.com/Elegycloud/clash-for-linux-backup.git

git clone http://aur.archlinux.org/yay.git

cd yay

echo "you should use the clash for linux to accelerate"

echo "modify the PKGBUILD, add these into the export section:"
echo "export GO111MODULE = on"
echo "export GOPROXY = https://goproxy.cn"


