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

source "${ZDOTDIR:-$HOME}/fasd.zsh"
source "${ZDOTDIR:-$HOME}/fzf.zsh"
source "${ZDOTDIR:-$HOME}/colors.zsh"
source "${ZDOTDIR:-$HOME}/aliases.zsh"

# source completions
# compctl -g "${HOME}/.rubies/*(:t)" chruby

# source /usr/local/opt/chruby/share/chruby/chruby.sh

# chruby 2

if [[ -s "${HOME}/.config/nu/nurc" ]]; then
  source ~/.config/nu/nurc
fi

source /usr/share/nvm/init-nvm.sh

