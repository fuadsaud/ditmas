function load_fzf {
  [ -f ~/.fzf.bash ] && source "${HOME}/.fzf.bash"
}

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

source "${XDG_CONFIG_HOME}/zsh/aliases.zsh"
source "${XDG_CONFIG_HOME}/zsh/fasd.zsh"

load_fzf
