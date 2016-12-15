echo "LOADING BASH RC"

export PS1="\[\e[32m\]\u\[\e[m\]@\[\e[33m\]\h\[\e[m\]:\[\e[36m\]\w\[\e[m\] \[\e[33m\]\\$\[\e[m\] "

if [[ -s "${HOME}/.nurc" ]]; then
  source ~/.nurc
fi

source ~/.zsh/aliases.zsh

source /usr/local/opt/chruby/share/chruby/chruby.sh
source /usr/local/opt/chruby/share/chruby/auto.sh

chruby 2.3
