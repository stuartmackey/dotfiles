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
  dbeaver-ce-bin
  redisinsight-git
  sqlitebrowser
  ufw
  pacman-contrib
)

for util in "${utils[@]}"; do
  paru -S --noconfirm "${util}"
done
