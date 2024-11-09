#!/bin/bash

brew bundle --no-lock --file=/dev/stdin <<EOF
brew "awscli"
brew "bash"
brew "bash-completion@2"
brew "curl"
brew "direnv"
brew "fzf"
brew "gh"
brew "git"
brew "jq"
brew "lazygit"
brew "mas"
brew "mise"
brew "openssl@3"
brew "pre-commit"
brew "ripgrep"
brew "rustup"
brew "stow"
brew "tmux"
brew "tree"
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
cask "utm"
cask "vlc"
cask "wezterm"

mas "1Password for Safari", id: 1569813296
EOF
