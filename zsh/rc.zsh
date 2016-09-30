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

alias bx="bundle exec"
alias cdgr="cd \`git root\`"
alias git="hub"
alias mk="make"
alias rk="rake"
alias teamocil="teamocil --here"
alias vhalt="vagrant halt"
alias vssh="vagrant ssh"
alias vup="vagrant up"
alias vi="vim"
alias vundle="vim +PluginInstall +qall"
alias yt="youtube-dl -t"

alias cp="${aliases[cp]:-cp} -v"
alias ln="${aliases[ln]:-ln} -v"
alias mv="${aliases[mv]:-mv} -v"
alias rm="${aliases[rm]:-rm} -v"

unsetopt correct

# source completions
compctl -g '~/.teamocil/*(:t:r)' teamocil
compctl -g '~/.rubies/*(:t)' chruby

chruby 2.2
