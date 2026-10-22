function fish_prompt
    set -l last_status $status

    set_color brblack
    printf '%s' (prompt_pwd)

    if command -sq git
        set -l branch (command git symbolic-ref --quiet --short HEAD 2>/dev/null)

        if test -n "$branch"
            set_color green
            printf ' (%s)' $branch
        end
    end

    if test $last_status -ne 0
        set_color red
    else
        set_color cyan
    end

    printf ' ❯ '
    set_color normal
end
