sudo pacman -Syy
sudo pacman -S --noconfirm --needed base-devel

sudo pacman -S --noconfirm xf86-video-fbdev xorg xorg-xinit nitrogen picom
sudo pacman -S --noconfirm stow fzf kitty

sudo pacman -S --noconfirm xorg-server xorg-apps
sudo pacman -S --noconfirm i3-gaps i3blocks i3lock numlockx

sudo pacman -S --noconfirm noto-fonts ttf-ubuntu-font-family ttf-dejavu ttf-freefont
sudo pacman -S --noconfirm ttf-liberation ttf-droid ttf-roboto terminus-font

sudo pacman -S --noconfirm rxvt-unicode ranger rofi dmenu --needed

sudo pacman -S --noconfirm neovim tmux virtualbox openssh

cd
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

yay -Y --gendb
yay -Syu --devel
yay -Y --devel --save

yay -S asdf nerd-fonts-hack nerd-fonts-victor-mono github-cli

#yay -S brave 
