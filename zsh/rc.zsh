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

source "${ZDOTDIR:-$HOME}/.zsh/aliases.zsh"
source "${ZDOTDIR:-$HOME}/.zsh/fzf.zsh"

# source completions
compctl -g "${HOME}/.teamocil/*(:t:r)" teamocil
compctl -g "${HOME}/.rubies/*(:t)" chruby

if [[ -s "${HOME}/.nurc" ]]; then
  source ~/.nurc
fi

chruby 2
