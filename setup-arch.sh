#!/bin/bash

echo "---- Set up Paru"
echo "******** SKIPPING"

#sudo pacman -S --needed base-devel
#git clone https://aur.archlinux.org/paru.git
#cd paru
#makepkg -si

echo "Kitty, Neovim, gh, stow, tmux, fzf, ripgrep, ripgrep, btop, Chrome, lazygit, unzip  ---------------------------------------------------------------------------"
paru -yS kitty neovim github-cli stow tmux fzf btop ripgrep google-chrome lazygit unzip
sudo update-alternatives --config x-terminal-emulator

echo "Nerd Fonts --------------------------------------------------------------"
declare -a fonts=(
    BitstreamVeraSansMono
    CodeNewRoman
    DroidSansMono
    FiraCode
    FiraMono
    Go-Mono
    Hack
    Hermit
    JetBrainsMono
    Meslo
    Noto
    Overpass
    ProggyClean
    RobotoMono
    SourceCodePro
    SpaceMono
    Ubuntu
    UbuntuMono
    VictorMono
)

version='2.1.0'
fonts_dir="${HOME}/.local/share/fonts"

if [[ ! -d "$fonts_dir" ]]; then
    mkdir -p "$fonts_dir"
fi

for font in "${fonts[@]}"; do
    zip_file="${font}.zip"
    download_url="https://github.com/ryanoasis/nerd-fonts/releases/download/v${version}/${zip_file}"
    echo "Downloading $download_url"
    wget "$download_url"
    unzip "$zip_file" -d "$fonts_dir"
    rm "$zip_file"
done

find "$fonts_dir" -name '*Windows Compatible*' -delete

fc-cache -fv

echo "asdf ------------------------------------------------------------------"
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.14.1

echo "aws -------------------------------------------------------------------"
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
rm -rf ./aws
rm awscliv2.zip

echo "Working Folder --------------------------------------------------------"
mkdir ~/Working
mkdir ~/Working/GoReport
mkdir ~/Working/personal
