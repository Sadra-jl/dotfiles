function mkdir -d "Create a directory and set CWD"
    command mkdir $argv

    if test $status = 0
        switch $argv[(count $argv)]
            case '-*'

            case '*'
                cd $argv[(count $argv)]
                return
        end
    end
end

function fdb -d "fd command with bat"
    command fd $argv -X bat
end

function tailb -d "tail -f command with bat"
    command tail -f $argv | bat --paging=never -l log
end

function help -d "show app_name --help in bat"
    command $argv --help 2>&1 | bat --plain --language=help
end

function cdf -d "fast directory change with fzf and zoxide"
    # command __zoxide_cd $(find . -type d -print | fzf)
     __zoxide_cd && __zoxide_cd $(fd -0 --type d --ignore-file ~/.config/fd/ignore --hidden | fzf --read0)
end

function lvimf -d "fast lunarvim open with fzf"
    command lvim $(fzf)
end

function batf -d "fast lunarvim open with fzf"
    command bat $(fd -0 --type f --hidden | fzf --read0)
end
