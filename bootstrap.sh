#!/bin/bash

cd $(dirname "$0")/scripts

if [[ "$OSTYPE" == "darwin"* ]]; then
  ./homebrew.sh
fi

./neovim.sh
./tmux.sh
