ZSH_DISABLE_COMPFIX="true"

eval "$(/opt/homebrew/bin/brew shellenv)"

path=(
    ${HOME}/bin
    ${HOME}/go/bin
    /usr/local/go/bin
    ${path}
    ${HOME}/.nvim/nvim-macos/bin
)

export EDITOR=nvim

alias g="git"
alias gs="git s"
alias k="kubectl"
alias vim="nvim"

if [[ -f ~/.fzf.zsh ]]; then
  source ~/.fzf.zsh
fi
if [[ -f "$HOME/.cargo/env" ]]; then
  source "$HOME/.cargo/env"
fi

if command -v direnv &> /dev/null; then
  eval "$(direnv hook zsh)"
fi

if [[ -f "$HOME/.config/op/plugins.sh" ]]; then
  source "$HOME/.config/op/plugins.sh"
fi
