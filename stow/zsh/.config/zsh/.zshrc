#
#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

function safe_source {
  if [[ -s $1 ]]; then
    source $1
  fi
}

function safe_run {
  if command -v "$1" >> /dev/null; then
    $@
  else
    return 127
  fi
}

function load_asdf {
  if is-darwin; then
    safe_source "$(brew --prefix asdf)/libexec/asdf.sh"
  else
    safe_source /opt/asdf-vm/asdf.sh
  fi
}

export HISTFILE="$HOME/.cache/zsh/history"

# Reading ~/.profile here ensures:
#
# - both login and non-login shells will load it
# - it will be loaded after /etc/zprofile, which on mac runs path_helper
if [[ -s "${HOME}/.profile" ]]; then
  source "${HOME}/.profile"
fi

# Source Prezto.
safe_source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"

# Customize to your needs...

stty -ixon # disable C-s

unsetopt correct
setopt interactivecomments
setopt globdots

safe_source "${ZDOTDIR:-$HOME}/fasd.zsh"
safe_source "${ZDOTDIR:-$HOME}/fzf.zsh"
safe_source "${ZDOTDIR:-$HOME}/colors.zsh"
safe_source "${ZDOTDIR:-$HOME}/aliases.zsh"
safe_source "${ZDOTDIR:-$HOME}/completions.zsh"

load_asdf

eval "$(direnv hook zsh)"

# Ensure path arrays do not contain duplicates.
typeset -gU cdpath fpath mailpath path
