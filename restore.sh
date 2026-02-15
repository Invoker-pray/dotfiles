sudo pacman -S --needed - <pacman_list.txt
yay -S --needed - <yay_list.txt

#home
rm -rf ~/.icons ~/.themes
cp -r home./* ~/

#.config
rm -rf ~/.config/dconf ~/.config/fastfetch ~/.config/fcitx ~/.config/fcitx5 ~/.config/gtk-3.0 ~/.config/gtk-4.0 ~/.config/hypr ~/.config/kitty ~/.config/nvim ~/.config/rofi ~/.config/systemd ~/.config/waybar ~/.config/xsettingsd
cp -r config./* ~/.config

#etc
sudo rm -rf /etc/sddm.conf
sudo cp etc./sddm.conf /etc

#.local/share
rm -rf ~/.local/share/applications ~/.local/share/fcitx5 ~/.local/share/hyprland ~/.local/share/qutebrowser ~/.local/share/sddm
cp -r local./share/* ~/.local/share/

# .local.state
rm -rf ~/.local/state/wireplumber
cp -r local./state/wireplumber ~/.local/state

#usr
sudo rm -rf /usr/share/sddm /usr/share/wayland-sessions
sudo cp -r usr./share/* /usr/share

#font
fc-cache -fv
