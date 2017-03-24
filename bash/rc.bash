echo "LOADING BASH RC"

export PS1="\[\e[32m\]\u\[\e[m\]@\[\e[33m\]\h\[\e[m\]:\[\e[36m\]\w\[\e[m\] \[\e[33m\]\\$\[\e[m\] "

fasd_cd() {
  if [ $# -le 1 ]; then
    fasd "$@"
  else
    local _fasd_ret="$(fasd -e echo "$@")"
    [ -z "$_fasd_ret" ] && return
    [ -d "$_fasd_ret" ] && cd "$_fasd_ret" || echo "$_fasd_ret"
  fi
}

alias g=git
source ~/.zsh/aliases.zsh
source ~/.nurc

source /usr/local/opt/chruby/share/chruby/chruby.sh
source /usr/local/opt/chruby/share/chruby/auto.sh

chruby 2
