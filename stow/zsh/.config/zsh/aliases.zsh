alias bat='docker run -it --rm -e BAT_THEME -e BAT_STYLE -e BAT_TABS -v "$(pwd):/myapp" danlynn/bat'
alias bx="bundle exec"
alias cdgr="cd \`git root\`"
alias dsnc="dsync"
alias git="hub"
alias mk="make"
alias n="nvim"
alias nexus="emulator -avd Nexus_5X_API_28"
alias nvplug="nvim +PlugInstall +qall"
alias pacs="sudo pacman -S"
alias qmkxf="qmk flash -kb xd75 -km fuad -bl dfu"
alias rk="rake"
alias vhalt="vagrant halt"
alias vssh="vagrant ssh"
alias vup="vagrant up"
alias vi="vim"
alias vplug="vim +PlugInstall +qall"
alias w1="watch -n 10"
alias w5="watch -n 10"
alias w10="watch -n 10"
alias w15="watch -n 10"
alias w30="watch -n 10"
alias yt="youtube-dl -t"
alias yta="youtube-dl -t -x --audio-format mp3"
alias y="yay -S"

alias cp="${aliases[cp]:-cp} -v"
alias ln="${aliases[ln]:-ln} -v"
alias mv="${aliases[mv]:-mv} -v"
alias rm="${aliases[rm]:-rm} -v"

alias a='fasd -a'        # any
alias s='fasd -si'       # show / search / select
alias d='fasd -d'        # directory
alias f='fasd -f'        # file
alias sd='fasd -sid'     # interactive directory selection
alias sf='fasd -sif'     # interactive file selection
alias z='fasd_cd -d'     # cd, same functionality as j in autojump
alias zz='fasd_cd -d -i' # cd with interactive selection
alias j="fasd_jump"
alias nv="fasd_edit"

function nars() { nu-ar $@ --env staging }
function narp() { nu-ar $@ --env prod    }
function nbrs() { nu-br $@ --env staging }
function nbrp() { nu-br $@ --env prod    }
function nmxs() { nu-mx $@ --env staging }
function nmxp() { nu-mx $@ --env prod    }

alias nude="nu utils docker-env"
alias nusss="nu security scope show"
alias nussa="nu security scope add"
alias nussf="nu security scope find"
alias numq="nu mordor query --accept application/json"
alias nuclone="nu projects clone"
alias zagallo="nu inutils zagallo"
alias zoiper="~/.local/opt/Zoiper5/zoiper"

function path { print -l "${PATH}" }
function nz { nvim "${ZDOTDIR}" }
