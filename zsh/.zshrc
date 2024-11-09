ZSH_DISABLE_COMPFIX="true"
export PATH=/Users/bhops/go/bin:/Users/bhops/.cargo/bin:$PATH

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

if [[ -f "$HOME/.config/op/plugins.sh" ]]; then
  source "$HOME/.config/op/plugins.sh"
fi

if type direnv &> /dev/null; then
  eval "$(direnv hook zsh)"
fi

if type mise &> /dev/null; then
  eval "$(mise activate zsh)"
fi
