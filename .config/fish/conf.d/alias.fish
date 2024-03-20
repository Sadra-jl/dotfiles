alias ls='eza --color=always --sort=size --group-directories-first'

alias la='eza -a --color=always --group-directories-first'

#list only directories
alias ld='eza -lD'

#list only files
alias lf='eza -lF --color=always | grep -v/'

#list only hidden files
alias lh='eza -dl .* --group-directories-first'

#list everything
alias ll='eza -al --color=always --group-directories-first'

#list everything sorted by time updated
alias lti='eza -al --sort=modified'

# tree listing
alias lt='eza -aT --color=always --group-directories-first'

alias l.='eza -a | egrep "^\."'

alias unlock='sudo rm /var/lib/pacman/db.lck'    # remove pacman lock

alias fzf='fzf --preview "bat --color=always --style=numbers --line-range=:500 {}"'

alias config='/usr/bin/git --git-dir=/home/sj13/.cfg/ --work-tree=/home/sj13'
