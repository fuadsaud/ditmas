#
#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

function ppath {
  echo $PATH | tr : '\n'
}

function safe_source {
  if [[ -s $1 ]]; then
    source $1
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

autoload bashcompinit; bashcompinit

safe_source "${ZDOTDIR:-$HOME}/fasd.zsh"
safe_source "${ZDOTDIR:-$HOME}/fzf.zsh"
safe_source "${ZDOTDIR:-$HOME}/colors.zsh"
safe_source "${ZDOTDIR:-$HOME}/aliases.zsh"
safe_source "${XDG_CONFIG_HOME}/pitch/pitchrc"

# source completions
compctl -g "${HOME}/.rubies/*(:t)" chruby

chruby 3

