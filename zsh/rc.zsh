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

# Use video title as file name.
alias yt="youtube-dl -t"

alias vundle="vim +BundleInstall +qall"
alias pryr="pry -r ./config/environment.rb"

alias m="make"
alias mk="make"

alias cp="${aliases[cp]:-cp} -v"
alias ln="${aliases[ln]:-ln} -v"
alias mv="${aliases[mv]:-mv} -v"
alias rm="${aliases[rm]:-rm} -v"

# cd to given rubygem directory.
function gemcd {
  if [ -n "$(gem which $1)" ]; then
    cd $(dirname $(dirname "$(gem which $1)"))
  fi
 }

function path {
  echo $PATH | awk 'BEGIN { RS = ":" } { print $1 }'
}

# Disable autocorrect.
unsetopt correct

# Goodbye bundle exec.
# This is being set here instead of zshenv because it needs to be
# set after rbenv is loaded.
export PATH="./bin:$PATH"

export LOLCOMMITS_FORK=1

export RUBY_GC_MALLOC_LIMIT=90000000
export RUBY_FREE_MIN=200000
