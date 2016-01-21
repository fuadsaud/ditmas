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

alias vundle="vim +PluginInstall +qall"
alias bx="bundle exec"
alias rake="bundle exec rake"
alias rspec="bundle exec rspec"
alias rk="rake"
alias git="hub"
alias mk="make"
alias vhalt="vagrant halt"
alias vssh="vagrant ssh"
alias vup="vagrant up"

alias cp="${aliases[cp]:-cp} -v"
alias ln="${aliases[ln]:-ln} -v"
alias mv="${aliases[mv]:-mv} -v"
alias rm="${aliases[rm]:-rm} -v"

unsetopt correct

# source completions
compctl -g '~/.teamocil/*(:t:r)' teamocil
compctl -g '~/.rubies/*(:t)' chruby

chruby 2
