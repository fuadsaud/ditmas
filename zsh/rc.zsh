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

# Use video title as file name.
alias yt="youtube-dl -t"

alias vundle="vim +BundleInstall +qall"
alias pryr="pry -r ./config/environment.rb"

alias m="make"
alias mk="make"
alias gitsh="gitsh --git $(which hub)"

alias cp="${aliases[cp]:-cp} -v"
alias ln="${aliases[ln]:-ln} -v"
alias mv="${aliases[mv]:-mv} -v"
alias rm="${aliases[rm]:-rm} -v"

unsetopt correct

# source teamocil completion
compctl -g '~/.teamocil/*(:t:r)' teamocil

# Goodbye bundle exec.
# This is being set here instead of zshenv because it needs to be
# set after rbenv is loaded.
export PATH="./bin:$PATH"

chruby ruby-2.1.2

compctl -g '~/.rubies/*(:t)' chruby
