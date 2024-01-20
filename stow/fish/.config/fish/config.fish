if status is-interactive
    fish_vi_key_bindings

    if string match -q -- 'tmux*' $TERM
        set -g fish_vi_force_cursor 1
    end
end

fenv source ~/.profile

neofetch
