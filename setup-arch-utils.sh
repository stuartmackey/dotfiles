echo "Base utils ---------------------------------------------------------------------------"
declare -a utils=(
  stow
  tmux
  fzf
  btop
  ripgrep
  lazygit
  sddm
  polybar
  rofi
  unzip
  unzip
  fd
  asdf-vm
  bash-completion
  xclip
  qt6-svg
  qt6-declarative
  gt5-quickcontrols2
  libnotify
  sqlite3
  zsh
  aws-session-manager-plugin
  postgresql-libs
)

for util in "${utils[@]}"; do
  paru -S --noconfirm "${util}"
done
