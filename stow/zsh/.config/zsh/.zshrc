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

# Source Prezto.
safe_source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"

# Customize to your needs...

stty -ixon # disable C-s

unsetopt correct
setopt interactivecomments
setopt globdots

autoload bashcompinit; bashcompinit

safe_source "${ZDOTDIR:-$HOME}/fasd.zsh"
safe_source "${ZDOTDIR:-$HOME}/fzf.zsh"
safe_source "${ZDOTDIR:-$HOME}/colors.zsh"
safe_source "${ZDOTDIR:-$HOME}/aliases.zsh"

safe_source "$(brew --prefix asdf)/libexec/asdf.sh" # fix for linux

eval "$(direnv hook zsh)"

# Ensure path arrays do not contain duplicates.
typeset -gU cdpath fpath mailpath path
