#
#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

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

chruby 2

PATH="$SRC_DIR/pitch/pitch-app/scripts:$PATH"
