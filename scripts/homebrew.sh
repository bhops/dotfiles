#!/bin/bash -e

if ! command -v brew &> /dev/null; then
  bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

brew bundle --no-lock --file=/dev/stdin <<EOF
  tap "aws/tap"
  tap "homebrew/bundle"
  tap "homebrew/cask-fonts"
  brew "awscli"
  brew "bash"
  brew "bash-completion@2"
  brew "curl"
  brew "fzf"
  brew "gh"
  brew "git"
  brew "go"
  brew "ipcalc"
  brew "jq"
  brew "mas"
  brew "openssl@3"
  brew "ripgrep"
  brew "rustup"
  brew "stow"
  brew "tmux"
  brew "zsh"
  cask "1password"
  cask "1password-cli"
  cask "docker"
  cask "font-jetbrains-mono"
  cask "font-jetbrains-mono-nerd-font"
  cask "google-chrome"
  cask "kitty"
  cask "transmission"
  cask "raycast"
  cask "rectangle"
  cask "spotify"
  mas "1Password for Safari", id: 1569813296 
EOF
