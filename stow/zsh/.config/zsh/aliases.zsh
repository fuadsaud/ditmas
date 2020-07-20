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
alias yt="youtube-dl -o '%(title)s-%(id)s.%(ext)s'"
alias yta="yt -x --audio-format mp3"
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


function path {
  print -l "${PATH}"
}

function nz {
  nvim "${ZDOTDIR}"
}
