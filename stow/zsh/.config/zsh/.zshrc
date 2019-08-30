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

source "${ZDOTDIR:-$HOME}/fasd.zsh"
source "${ZDOTDIR:-$HOME}/fzf.zsh"
source "${ZDOTDIR:-$HOME}/colors.zsh"
source "${ZDOTDIR:-$HOME}/aliases.zsh"

source /usr/share/nvm/init-nvm.sh

export LEIN_USE_BOOTCLASSPATH=no

# source completions
compctl -g "${HOME}/.rubies/*(:t)" chruby

chruby 2

if [[ -s "${HOME}/.config/nu/nurc" ]]; then
  source ~/.config/nu/nurc
fi
