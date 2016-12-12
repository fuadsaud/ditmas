alias bx="bundle exec"
alias cdgr="cd \`git root\`"
alias git="hub"
alias mk="make"
alias rk="rake"
alias tmc="teamocil --here"
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

alias a='fasd -a'        # any
alias s='fasd -si'       # show / search / select
alias d='fasd -d'        # directory
alias f='fasd -f'        # file
alias sd='fasd -sid'     # interactive directory selection
alias sf='fasd -sif'     # interactive file selection
alias z='fasd_cd -d'     # cd, same functionality as j in autojump
alias zz='fasd_cd -d -i' # cd with interactive selection
alias j='fasd_cd -d'
