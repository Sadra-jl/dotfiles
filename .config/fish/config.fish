# Most of the configuration are copied from:
# https://gitlab.com/dwt1/dotfiles

#⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣤⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
#⠀⠀⠀⠀⢰⣦⡀⠀⠀⠀⠀⠀⣰⣿⣿⣿⣷⣄⠀⠀⠀⠀⠀⢀⣴⣦⠀⠀⠀⠀
#⠀⠀⠀⠀⣿⣿⣿⣦⡀⠀⠀⣼⣿⣿⣿⣿⣿⣿⣆⠀⠀⢀⣴⣿⣿⣿⠀⠀⠀⠀,ggggggggggg,                               ,gggg,
#⠀⠀⠀⠀⣿⣿⣿⣿⣷⡄⠘⣿⣿⣿⣿⣿⣿⣿⡿⠀⣴⣿⣿⣿⣿⣿⠀⠀⠀⠀dP"""88""""""Y8,      ,dPYb,                d8" "8I               I8
#⠀⢸⣦⡀⠙⢿⣿⣿⣿⣿⠆⠈⠛⣋⣉⣉⡛⠛⠀⢾⣿⣿⣿⣿⡿⠟⢀⣤⡆⠀Yb,  88      `8b      IP'`Yb                88  ,dP               I8
#⠀⢸⣿⣿⣷⣄⠙⢿⠟⢁⣴⣾⣿⠿⠛⠻⣿⣿⣦⣄⠙⢿⡿⠋⣀⣴⣿⣿⡇⠀ `"  88      ,8P      I8  8I             8888888P"             88888888
#⠀⢸⣿⣿⣿⣿⣷⣄⠐⢿⣿⠟⢁⣴⣾⣦⡀⠙⢿⣿⡷⠀⣠⣾⣿⣿⣿⣿⡇⠀     88aaaad8P"       I8  8'                88                    I8
#⠀⢸⣿⣿⣿⣿⣿⣿⣦⡀⠁⣴⣿⣿⣿⣿⣿⣦⡈⠋⣠⣾⣿⣿⣿⣿⣿⣿⠃⠀     88""""",gggg,gg  I8 dP   ,ggg,         88          ,ggggg,   I8   gg      gg    ,g,
#⠀⠈⣿⣿⣿⣿⣿⣿⡟⢀⣾⣿⣿⣿⣿⣿⣿⣿⣷⡀⢻⣿⣿⣿⣿⣿⣿⡏⠀⠀     88    dP"  "Y8I  I8dP   i8" "8i   ,aa,_88         dP"  "Y8gggI8   I8      8I   ,8'8,
#⠀⠀⠸⣿⣿⣿⣿⣿⠁⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣇⠈⣿⣿⣿⣿⣿⡟⠀⠀⠀     88   i8'    ,8I  I8P    I8, ,8I  dP" "88P        i8'    ,8I ,I8,  I8,    ,8I  ,8'  Yb
#⠀⠀⠀⠹⣿⣿⣿⣿⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⣿⣿⣿⣿⡟⠁⠀⠀⠀     88  ,d8,   ,d8b,,d8b,_  `YbadP'  Yb,_,d88b,,_   ,d8,   ,d8',d88b,,d8b,  ,d8b,,8'_   8)
#⠀⠀⠀⠀⠈⠻⣿⣿⠀⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⢀⣿⣿⡿⠋⠀⠀⠀⠀⠀     88  P"Y8888P"`Y88P'"Y88888P"Y888  "Y8P"  "Y88888P"Y8888P"  8P""Y88P'"Y88P"`Y8P' "YY8P8P
#⠀⠀⠀⠀⠀⠀⠈⠛⠧⠘⣿⣿⣿⣿⣿⣿⣿⣿⡿⠁⠼⠋⠁⠀⠀⠀⠀⠀⠀⠀
#⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠛⠛⠛⠛⠛⠛⠛⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀

### ADDING TO THE PATH
# First line removes the path; second line sets it.  Without the first line,
# your path gets massive and fish becomes very slow.
set -e fish_user_paths
set -U fish_user_paths $HOME/.bin  $HOME/.local/bin $HOME/.config/emacs/bin $HOME/Applications /var/lib/flatpak/exports/bin/ $fish_user_paths

### EXPORT
set fish_greeting                                 # Supresses fish's intro message
set TERM "xterm-256color"                         # Sets the terminal type
set EDITOR "nvim"                 # $EDITOR use Emacs in terminal
set VISUAL "lvim"              # $VISUAL use Emacs in GUI mode
set GIT_EDITOR "vim"

### SET MANPAGER
### Uncomment only one of these!

### "bat" as manpager
#also can use batman
set -x MANROFFOPT "-c"
set -x MANPAGER "sh -c 'col -bx | bat -l man -p'"

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




zoxide init fish | source
alias cd="z"

complete -f -c dotnet -a "(dotnet complete (commandline -cp))"

#no need for this 
#fzf --fish | source

#this wont work for now 
#todo: need debuginh
#only print neofetch one
# if not set -q FIRST_FISH_RUN
# 	set -U FIRST_FISH_RUN
# 	neofetch
# end
