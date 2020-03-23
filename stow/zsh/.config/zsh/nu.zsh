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
