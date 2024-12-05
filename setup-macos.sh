/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install kitty
brew install gh
brew install asdf 
brew install nvim
brew install fzf
brew install alfred
brew install 1password
brew install ripgrep
brew install tableplus
brew install stow

brew tap homebrew/cask-fonts
brew install --cask font-hack-nerd-font
brew install --cask font-victor-mono-nerd-font

brew install tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

brew install virtualbox

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
