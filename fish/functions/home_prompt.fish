function get_pwd -S
    if git rev-parse --git-dir --show-toplevel &> /dev/null
        set pwd $(git rev-parse --git-dir --show-toplevel | tail -n 1 | xargs -n 1 basename)
        set git_current_branch $(git rev-parse --abbrev-ref HEAD)
        if test -n "$(git status --porcelain)"
            set git_prompt (set_color cyan) $git_current_branch (set_color yellow)"✗"(set_color normal)" "
        else
            set git_prompt (set_color cyan) $git_current_branch (set_color green)"✓"(set_color normal)" "
        end
    else
        set pwd $(prompt_pwd)
        set git_prompt " "
    end
end

function fish_prompt
    get_pwd
    echo $pwd $git_prompt
end
