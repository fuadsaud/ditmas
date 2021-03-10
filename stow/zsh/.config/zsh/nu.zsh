function nars() { nu-ar $@ --env staging }
function narp() { nu-ar $@ --env prod    }
function nbrs() { nu-br $@ --env staging }
function nbrp() { nu-br $@ --env prod    }
function nmxs() { nu-mx $@ --env staging }
function nmxp() { nu-mx $@ --env prod    }

alias nuclone="nu projects clone"
alias nucurl="nu services curl -f"
alias nude="nu utils docker-env"
alias nufoo="nu aws credentials refresh"
alias numq="nu mordor query --accept application/json"
alias nusss="nu security scope show"
alias nussa="nu security scope add"
alias nussf="nu security scope find"
alias nuvpnc="nu vpn connect --client openfortivpn"
alias nuvpnd="nu vpn disconnect"
alias pingbo="ping backoffice.nubank.com.br"
alias zagallo="nu inutils zagallo"
alias zoiper="~/.local/opt/Zoiper5/zoiper"
