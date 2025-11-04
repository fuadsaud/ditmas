if status is-interactive
  if not set -q TMUX
    fenv source ~/.profile

    fish_vi_key_bindings

    if string match -q -- 'tmux*' $TERM
        set -g fish_vi_force_cursor 1
    end

    hyfetch
  end

  jump shell fish | source
end
