#!/bin/bash -e

if ! command -v sudo &> /dev/null; then
  sudo=""
else
  sudo="sudo"
fi

if ! command -v nvim &> /dev/null; then
  tmpdir=$(mktemp -d)
  cd "$tmpdir"
  arch=$(uname -m)
  if [[ "$arch" == "x86_64" ]]; then
    $sudo apt update
    $sudo apt-get install curl -y
    curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
    rm -rf /opt/nvim
    $sudo tar -C /opt -xzf nvim-linux64.tar.gz
    $sudo mv /opt/nvim-linux64 /opt/nvim-linux
  else
    $sudo apt update
    $sudo apt-get install git ninja-build gettext cmake unzip curl -y
    git clone -b nightly --single-branch --depth 1 https://github.com/neovim/neovim.git
    cd neovim
    make CMAKE_BUILD_TYPE=Release
    make CMAKE_EXTRA_FLAGS="-DCMAKE_INSTALL_PREFIX=/opt/nvim-linux"
    $sudo make install
  fi
fi

