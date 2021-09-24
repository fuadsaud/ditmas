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

source "${ZDOTDIR:-$HOME}/fasd.zsh"
source "${ZDOTDIR:-$HOME}/fzf.zsh"
source "${ZDOTDIR:-$HOME}/colors.zsh"
source "${ZDOTDIR:-$HOME}/aliases.zsh"
source "${ZDOTDIR:-$HOME}/nu.zsh"

export LEIN_USE_BOOTCLASSPATH=no

# source completions
compctl -g "${HOME}/.rubies/*(:t)" chruby

chruby 3

safe_source "${XDG_CONFIG_HOME}/pitch/pitchrc"
