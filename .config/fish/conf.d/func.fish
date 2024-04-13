function mkdirm -d "Create a directory and set CWD"
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

# Function for printing a column (splits input on whitespace)
# ex: echo 1 2 3 | coln 3
# output: 3
function coln
    while read -l input
        echo $input | awk '{print $'$argv[1]'}'
    end
end

# Function for printing a row
# ex: seq 3 | rown 3
# output: 3
function rown --argument index
    sed -n "$index p"
end

# Function for ignoring the first 'n' lines
# ex: seq 10 | skip 5
# results: prints everything but the first 5 lines
function skip --argument n
    tail +(math 1 + $n)
end

# Function for taking the first 'n' lines
# ex: seq 10 | take 5
# results: prints only the first 5 lines
function take --argument number
    head -$number
end

function ply --argument dir_name -d "create a directory in /playground/"
set path "/playground/$dir_name/"
    if ! test -d $path 
        sudo mkdir -p  $path && sudo chown (whoami) $path
    end
     
    cd $path; or exit 1
end
