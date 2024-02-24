#!/bin/bash

cd $(dirname "$0")/scripts

if [[ "$OSTYPE" == "darwin"* ]]; then
  ./homebrew.sh
  ./neovim-macos.sh
fi

if [[ "$OSTYPE" == "linux"* ]]; then
  ./neovim-linux.sh
fi

./tmux.sh
