cd ~/temp/yay

makepkg
makepkg -si


git clone https://github.com/Invoker-pray/dotfiles.git

cd dotfiles

sudo pacman -S --needed - < pacman_pkgs.txt
yay -S --needed - < pkgs_arch.txt



python -m venv venv_name
source venv_name/bin/activate
python -m ensurepip --upgrade
pip install --upgrade pip

 pip install -r pip_installed.txt

 
