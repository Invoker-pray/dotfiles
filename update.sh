# pacman-yay list
pacman -Qqe >pacman_list.txt
yay -Qqe >yay_list.txt

rm -rf config.
mkdir config.

rm -rf local.
mkdir -p local./share
mkdir -p local./state
sudo rm -rf home.
mkdir home.

sudo rm -rf etc.
sudo mkdir etc.

sudo rm -rf usr.
sudo mkdir usr.

#zshrc
cp ~/.zshrc home.
cp ~/.zsh_history home.
cp ~/.profile home.

# update.sh && update_initcpio.sh
cp ~/update.sh home./update.sh
cp ~/update_initcpio.sh home.

#hypr
cp -r ~/.config/hypr config.

#kitty
cp -r ~/.config/kitty config.

#neovim
cp -r ~/.config/nvim config.

#waybar
cp -r ~/.config/waybar config.

#rofi
cp -r ~/.config/rofi config.

#fastfetch
cp -r ~/.config/fastfetch config.

#mimeapps.list
cp -r ~/.config/mimeapps.list config.

#icons
cp -r ~/.icons home.

#themes
cp -r ~/.themes home.

#gtk & qt
cp -r ~/.config/gtk-3.0 config.
cp -r ~/.config/gtk-4.0 config.
cp -r ~/.config/Trolltech.conf config.
cp -r ~/.config/QtProject.conf config.

#audio & keyboard
cp -r ~/.config/pavucontrol.ini config.
cp -r ~/.config/fcitx config.
cp -r ~/.config/fcitx5 config.
cp -r ~/.local/state/wireplumber local./state

# xsettingsd
cp -r ~/.config/xsettingsd config.

#sddm
sudo cp -r /etc/sddm.conf etc.
sudo mkdir -p usr./share/sddm/
sudo cp -r /usr/share/sddm/themes usr./share/sddm/
sudo mkdir -p usr./share/wayland-sessions
sudo cp -r /usr/share/wayland-sessions/hyprland.desktop usr./share/wayland-sessions

#dconf
cp -r ~/.config/dconf config.

# hyprland
cp -r ~/.local/share/hyprland local./share
cp -r ~/.local/share/fcitx5 local./share
cp -r ~/.local/share/applications local./share
cp -r ~/.local/share/sddm local./share
cp -r ~/.local/share/qutebrowser local./share
#cp -r ~/.local/share/nvim local./share

#systemd
cp -r ~/.config/systemd config.
