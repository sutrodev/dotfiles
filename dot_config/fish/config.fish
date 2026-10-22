if status is-interactive
    set -g fish_greeting

    alias ll='ls -lah'

    set -gx EDITOR vim
    set -gx VISUAL vim
end
