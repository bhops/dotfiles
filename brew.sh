#!/bin/bash

brew bundle --no-lock --file=/dev/stdin <<EOF
brew "bash"
brew "bash-completion@2"
brew "curl"
brew "fzf"
brew "gh"
brew "git"
brew "ipcalc"
brew "jq"
brew "lazygit"
brew "mas"
brew "openssl@3"
brew "pre-commit"
brew "ripgrep"
brew "rustup"
brew "tmux"
brew "zsh"

cask "1password"
cask "1password-cli"
cask "docker"
cask "font-jetbrains-mono"
cask "font-jetbrains-mono-nerd-font"
cask "google-chrome"
cask "transmission"
cask "rectangle"
cask "spotify"
cask "wezterm"

mas "1Password for Safari", id: 1569813296
EOF
