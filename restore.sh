sudo pacman -S --needed - <pacman_list.txt
yay -S --needed - <yay_list.txt

#home
rm -rf ~/.icons ~/.themes
cp -r home./. ~/

#.config
rm -rf ~/.config/dconf ~/.config/fastfetch ~/.config/fcitx ~/.config/fcitx5 ~/.config/gtk-3.0 ~/.config/gtk-4.0 ~/.config/hypr ~/.config/kitty ~/.config/mimeapps.list ~/.config/nvim ~/.config/pavucontrol.ini ~/.config/QtProject.conf ~/.config/rofi ~/.config/systemd ~/.config/Trolltech.conf ~/.config/waybar ~/.config/xsettingsd ~/.config/zathura
if [ -f config./environment.d/openclaw.conf ]; then
	rm -f ~/.config/environment.d/openclaw.conf
fi
mkdir -p ~/.config
cp -r config./* ~/.config
systemctl --user daemon-reload
systemctl --user unset-environment LD_LIBRARY_PATH

#etc
sudo rm -rf /etc/sddm.conf
sudo cp etc./sddm.conf /etc

#.local/share
rm -rf ~/.local/share/applications ~/.local/share/fcitx5 ~/.local/share/hyprland ~/.local/share/nvim ~/.local/share/qutebrowser ~/.local/share/sddm
rm -f ~/.local/share/fonts/noto/NotoColorEmoji.ttf
mkdir -p ~/.local/share
cp -r local./share/* ~/.local/share/

# .local.state
rm -rf ~/.local/state/wireplumber
mkdir -p ~/.local/state
cp -r local./state/wireplumber ~/.local/state

#usr
sudo rm -rf /usr/share/sddm /usr/share/wayland-sessions
sudo cp -r usr./share/* /usr/share

#font
fc-cache -fv
