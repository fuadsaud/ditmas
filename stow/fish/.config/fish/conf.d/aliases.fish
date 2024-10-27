alias bat='docker run -it --rm -e BAT_THEME -e BAT_STYLE -e BAT_TABS -v "$(pwd):/myapp" danlynn/bat'
alias bx="bundle exec"
alias cdgr="cd (git root)"
alias cdgw='cd (git fz-worktree-path)'
alias dc="docker compose"
alias g="git"
alias j="z"
alias mk="make"
alias n="nvim"
alias npmr="npm run"
alias p="paru"
alias pbc="pbcopy"
alias pbp="pbpaste"
alias pacs="sudo pacman -S"
alias pm="pulumi"
alias qmkcf="qmk flash -kb crkbd -km fuad -bl dfu"
alias qmkef="qmk flash -kb ergodash/rev1 -km fuad"
alias qmkxf="qmk flash -kb xd75 -km fuad -bl dfu"
alias rk="rake"
alias sys="sudo systemctl"
alias sysu="systemctl --user"
alias te="teamocil --edit"
alias th="teamocil --here"
alias vi="vim"
alias w1="watch -n 1"
alias w5="watch -n 5"
alias w10="watch -n 10"
alias w15="watch -n 15"
alias w30="watch -n 30"
alias yt="youtube-dl -o '%(title)s-%(id)s.%(ext)s'"
alias yta="yt -x --audio-format mp3"

# alias cp="${aliases[cp]:-cp} -v"
# alias ln="${aliases[ln]:-ln} -v"
# alias mv="${aliases[mv]:-mv} -v"
alias rm="rm -i"

# function path { print -l $path; }

# function nd { nvim "+cd ${DITMAS_DIR}"; }
# function nz { nvim "+cd ${ZDOTDIR}"; }
# function nw { nvim $(which ${1}); }
# function nv { nvim "+cd ${XDG_CONFIG_HOME}/nvim"; }
