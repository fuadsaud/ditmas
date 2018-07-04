PROMPT_COMMAND='PS1_PATH=$(sed "s:\([^/\.]\)[^/]*/:\1/:g" <<< ${PWD/#$HOME/\~})'
export PS1='\[\e[32m\]\u\[\e[m\]@\[\e[33m\]\h\[\e[m\]:\[\e[36m\] $PS1_PATH\[\e[m\] \[\e[33m\]\\$\[\e[m\] '
export PS4='+(${BASH_SOURCE}:${LINENO}): ${FUNCNAME[0]:+${FUNCNAME[0]}(): }'

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
source ~/.zsh/fasd.zsh
source ~/.nurc

source /usr/local/opt/chruby/share/chruby/chruby.sh
source /usr/local/opt/chruby/share/chruby/auto.sh

chruby 2

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
