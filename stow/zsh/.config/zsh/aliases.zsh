alias a="rg"
alias bat='docker run -it --rm -e BAT_THEME -e BAT_STYLE -e BAT_TABS -v "$(pwd):/myapp" danlynn/bat'
alias bx="bundle exec"
alias cdgr="cd \`git root\`"
alias dsnc="dsync"
alias g="git"
alias gg="gt"
alias mk="make"
alias n="nvim"
alias nexus="emulator -avd Nexus_5X_API_28"
alias nvplug="nvim +PlugInstall +qall"
alias p="paru"
alias pacs="sudo pacman -S"
alias qmkxf="qmk flash -kb xd75 -km fuad -bl dfu"
alias qmkef="qmk flash -kb ergodash/rev1 -km fuad"
alias rk="rake"
alias sys="sudo systemctl"
alias sysu="systemctl --user"
alias vi="vim"
alias vplug="vim +PlugInstall +qall"
alias w1="watch -n 1"
alias w5="watch -n 5"
alias w10="watch -n 10"
alias w15="watch -n 15"
alias w30="watch -n 30"
alias yt="youtube-dl -o '%(title)s-%(id)s.%(ext)s'"
alias yta="yt -x --audio-format mp3"

alias cp="${aliases[cp]:-cp} -v"
alias ln="${aliases[ln]:-ln} -v"
alias mv="${aliases[mv]:-mv} -v"
alias rm="${aliases[rm]:-rm} -v"


# alias a='fasd -a'        # any
# alias s='fasd -si'       # show / search / select
# alias d='fasd -d'        # directory
# alias f='fasd -f'        # file
# alias sd='fasd -sid'     # interactive directory selection
# alias sf='fasd -sif'     # interactive file selection
# alias z='fasd_cd -d'     # cd, same functionality as j in autojump
# alias zz='fasd_cd -d -i' # cd with interactive selection
alias j="fasd_jump"
alias nf="fasd_edit"

function path { print -l "${PATH}"; }

function nd { nvim "+cd ${DITMAS_DIR}"; }
function nz { nvim "+cd ${ZDOTDIR}"; }
function nw { nvim $(which ${1}) }
function nv { nvim "+cd ${XDG_CONFIG_HOME}/nvim" }
