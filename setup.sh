sudo pacman -Syy
sudo pacman -S --noconfirm --needed base-devel

sudo pacman -S --noconfirm xf86-video-fbdev xorg xorg-xinit nitrogen picom stow fzf kitty
sudo pacman -S --noconfirm xorg-server xorg-apps numlockx
sudo pacman -S --noconfirm neovim tmux virtualbox openssh

cd
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd
rm -rf yay

yay -Y --gendb
yay -Syu --devel
yay -Y --devel --save

yay -S asdf-vm nerd-fonts-hack nerd-fonts-victor-mono github-cli

#yay -S brave 

sudo pacman -S --noconfirm unzip zsh

 sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
yay -S diodon
sudo pacman -S cryptsetup flameshot xclip

# Local development
sudo pacman -S docker docker-compose
yay chromedriver

# File browser
sudo pacman -S ranger keychain ripgrep libreoffice-still

# Access to AWS
sudo pacman -S aws-cli-v2-bin 

yay -S aws-session-manager-plugin
