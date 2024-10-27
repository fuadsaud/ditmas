if status is-interactive; and not set -q TMUX
    fenv source ~/.profile

    source "$(brew --prefix asdf)/libexec/asdf.fish"

    fish_vi_key_bindings

    if string match -q -- 'tmux*' $TERM
        set -g fish_vi_force_cursor 1
    end

  neofetch
end

