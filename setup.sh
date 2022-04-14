sudo pacman -Syy
sudo pacman -S --noconfirm --needed base-devel

sudo pacman -S --noconfirm xf86-video-fbdev xorg xorg-xinit nitrogen picom
sudo pacman -S --noconfirm stow fzf kitty

sudo pacman -S --noconfirm xorg-server xorg-apps
sudo pacman -S --noconfirm numlockx

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

sudo pacman -S --noconfirm unzip



# Setting up pipewire for audio in ubuntu | https://linuxconfig.org/how-to-install-pipewire-on-ubuntu-linux#:~:text=Start%20by%20opening%20a%20command,to%20add%20the%20PipeWire%20PPA.&text=Next%2C%20execute%20the%20following%20two,package%20at%20the%20same%20time.
sudo add-apt-repository ppa:pipewire-debian/pipewire-upstream
sudo apt update
sudo apt install pipewire pipewire-audio-client-libraries
sudo apt install gstreamer1.0-pipewire libpipewire-0.3-{0,dev,modules} libspa-0.2-{bluetooth,dev,jack,modules} pipewire{,-{audio-client-libraries,pulse,media-session,bin,locales,tests}}
systemctl --user daemon-reload
systemctl --user --now disable pulseaudio.service pulseaudio.socket
systemctl --user --now enable pipewire pipewire-pulse
 
pactl info
 
 
