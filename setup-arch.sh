#!/bin/bash

echo "---- Set up Paru"
sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si

echo "Base utils ---------------------------------------------------------------------------"
declare -a utils=(
  kitty
  neovim
  github-cli
  stow
  tmux
  fzf
  btop
  ripgrep
  google-chrome
  lazygit
  sddm
  polybar
  rofi
  unzip
  flameshot
  unzip
  lazydocker
  fd
)

for util in "${utils[@]}"; do
  paru -S --noconfirm "${util}"
done

echo "Nerd Fonts --------------------------------------------------------------"
cd ~/dotfiles
./setup-fonts.sh

echo "asdf ------------------------------------------------------------------"
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.14.1
cd ~/dotfiles
./setup-asdf.sh

echo "aws -------------------------------------------------------------------"
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
rm -rf ./aws
rm awscliv2.zip

echo "sddm --------------------------------------------------------"
cd ~/dotfiles/sddm
sudo cp ./sddm.conf /etc/
sudo unzip -o ./catppuccin-mocha.zip -d /usr/share/sddm/themes/

echo "Working Folder --------------------------------------------------------"
mkdir ~/Working
mkdir ~/Working/GoReport
mkdir ~/Working/personal

echo "Set up git config -----------------------------------------------------"
git config --global user.email "stu.mackey@gmail.com"
git config --global user.name "Stuart Mackey"

echo "Set up gh -------------------------------------------------------------"
gh auth login

cd ~/dotfiles
git remote set-url origin git@github.com:stuartmackey/dotfiles

echo "Set up nvim"
gh repo clone stuartmackey/lazyvim-config ~/.config/nvim
