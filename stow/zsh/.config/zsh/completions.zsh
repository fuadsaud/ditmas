#!/usr/bin/env zsh

eval "$(flyctl completion zsh)"
eval "$(pulumi gen-completion zsh)"

_bb_tasks() {
    local matches=(`bb tasks |tail -n +3 |cut -f1 -d ' '`)
    compadd -a matches
    _files # autocomplete filenames as well
}
compdef _bb_tasks bb
