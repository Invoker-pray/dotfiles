# pacman-yay list
pacman -Qqe >pacman_list.txt
yay -Qqe >yay_list.txt

# zshrc
cp ~/.zshrc zsh/.zshrc

# update.sh && update_initcpio.sh
cp ~/update.sh update_applications.sh
cp ~/update_initcpio.sh .

#hypr
rm -rf hypr
cp -r ~/.config/hypr .

#kitty
rm -rf kitty
cp -r ~/.config/kitty .

#neovim
rm -rf nvim
cp -r ~/.config/nvim .
