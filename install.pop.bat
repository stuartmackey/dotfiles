#!/bin/bash

echo "1Password -------------------------------------------------------------------------"
curl -sS https://downloads.1password.com/linux/keys/1password.asc | sudo gpg --batch --yes --dearmor --output /usr/share/keyrings/1password-archive-keyring.gpg

echo 'deb [arch=amd64 signed-by=/usr/share/keyrings/1password-archive-keyring.gpg] https://downloads.1password.com/linux/debian/amd64 stable main' | sudo tee /etc/apt/sources.list.d/1password.list

sudo mkdir -p /etc/debsig/policies/AC2D62742012EA22/
 curl -sS https://downloads.1password.com/linux/debian/debsig/1password.pol | sudo tee /etc/debsig/policies/AC2D62742012EA22/1password.pol
 sudo mkdir -p /usr/share/debsig/keyrings/AC2D62742012EA22
 curl -sS https://downloads.1password.com/linux/keys/1password.asc | sudo gpg --batch --yes --dearmor --output /usr/share/debsig/keyrings/AC2D62742012EA22/debsig.gpg

sudo apt update && sudo apt install -y 1password

echo "Chrome ---------------------------------------------------------------------------"
sudo apt install -y google-chrome-stable

echo "Kitty ----------------------------------------------------------------------------"
sudo apt install -y kitty
sudo update-alternatives --config x-terminal-emulator

echo "Neovim ---------------------------------------------------------------------------"
sudo add-apt-repository -y ppa:neovim-ppa/unstable
sudo apt-get update -y
sudo apt-get install -y neovim

echo "gh -------------------------------------------------------------------------------"
sudo apt-get install -y gh

echo "stow -----------------------------------------------------------------------------"
sudo apt-get install -y stow

echo "tmux -----------------------------------------------------------------------------"
sudo apt-get install -y tmux

echo "zsh -----------------------------------------------------------------------------"
sudo apt-get install -y zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "DBeaver - Community --------------------------------------------------------------"
sudo add-apt-repository ppa:serge-rider/dbeaver-ce
sudo apt-get update
sudo apt-get install dbeaver-ce

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

echo "Lazygit --------------------------------------------------------------"
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | \grep -Po '"tag_name": *"v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/download/v${LAZYGIT_VERSION}/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
sudo install lazygit -D -t /usr/local/bin/
rm lazygit
rm lazygit.tar.gz

echo "Working Folder --------------------------------------------------------"
mkdir ~/Working
mkdir ~/Working/GoReport
mkdir ~/Working/personal

echo "fzf -------------------------------------------------------------------"
sudo apt-get install -y fzf

echo "asdf ------------------------------------------------------------------"
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.14.1

echo "aws -------------------------------------------------------------------"
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
rm -rf ./aws
rm awscliv2.zip

echo "ripgrep -------------------------------------------------------------------"
sudo apt-get -y install ripgrep

echo "nchat ------------------------------------------"
sudo apt -y install ccache cmake build-essential gperf help2man libreadline-dev libssl-dev libncurses-dev libncursesw5-dev ncurses-doc zlib1g-dev libsqlite3-dev libmagic-dev golang

echo "btop -------------------------------------------"
sudo apt-get -y install btop



