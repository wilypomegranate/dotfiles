function pa
    set __pa_search $argv[1]
    if test -n "$__pa_search"
        ps auwwx | grep -i "$__pa_search" | grep -v grep
    end
end
