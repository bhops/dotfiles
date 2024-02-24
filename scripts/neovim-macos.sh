#!/bin/bash -e

if ! command -v nvim &> /dev/null; then
  dir=$(mktemp -d)
  tarfile="$dir"/nvim-macos.tar.gz
  curl -L https://github.com/neovim/neovim/releases/download/nightly/nvim-macos.tar.gz -o "$tarfile"
  # Avoid the "unknown developer" warning
  xattr -c "$tarfile"
  mkdir -p ~/.nvim
  tar xzvf "$tarfile" -C ~/.nvim
fi

