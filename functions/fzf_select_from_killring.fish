function fzf_select_from_killring --description "Select items from the killring and insert them into the current commandline."
    set killring_items $(
        string split0 -- $fish_killring | \
        string trim | \
        fzf --multi \
        $fzf_killring_opts
    )
    if test -n "$killring_items"
        # the "" at the end implicitly adds a space after the last inserted item
        commandline -i $(string join " " $killring_items "")
    end
    commandline -f repaint
end
