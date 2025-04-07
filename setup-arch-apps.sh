#!/bin/bash

echo "Apps ---------------------------------------------------------------------------"
declare -a utils=(
  kitty
  neovim
  github-cli
  google-chrome
  lazygit
  flameshot
  lazydocker
  ranger
  docker
  docker-compose
  nitrogen
  clamav
  1password
)

for util in "${utils[@]}"; do
  paru -S --noconfirm "${util}"
done
