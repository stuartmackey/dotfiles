sudo pacman -Syy
sudo pacman -S --needed base-devel

sudo pacman -S xf86-video-fbdev xorg xorg-xinit nitrogen picom
sudo pacman -S stow fzf kitty

sudo pacman -S xorg-server xorg-apps
sudo pacman -S i3-gaps i3blocks i3lock numlockx

sudo pacman -S noto-fonts ttf-ubuntu-font-family ttf-dejavu ttf-freefont
sudo pacman -S ttf-liberation ttf-droid ttf-roboto terminus-font

sudo pacman -S rxvt-unicode ranger rofi dmenu --needed

cd
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

yay -Y --gendb
yay -Syu --devel
yay -Y --devel --save
