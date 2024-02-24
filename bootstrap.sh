#!/bin/bash

cd "$(dirname "$0")/scripts" || exit 1

if [[ "$OSTYPE" == "darwin"* ]]; then
  ./homebrew.sh
  ./neovim-macos.sh
fi

if [[ "$OSTYPE" == "linux"* ]]; then
  ./neovim-linux.sh
fi

./tmux.sh
