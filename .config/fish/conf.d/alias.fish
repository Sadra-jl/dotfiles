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

alias l.='eza -a | grep -E "^\."'

alias unlock='sudo rm /var/lib/pacman/db.lck'    # remove pacman lock

alias fzf='fzf --preview "bat --color=always --style=numbers --line-range=:500 {}"'
# adding flags
alias df='df -h'                          # human-readable sizes
alias free='free -m'                      # show sizes in MB

# ps
alias psa="ps auxf"
alias psgrep="ps aux | grep -v grep | grep -i -e VSZ -e"
alias psmem='ps auxf | sort -nr -k 4'
alias pscpu='ps auxf | sort -nr -k 3'

# git
alias addup='git add -u'
alias addall='git add .'
alias branch='git branch'
alias checkout='git checkout'
alias clone='git clone'
alias commit='git commit -m'
alias fetch='git fetch'
alias pull='git pull origin'
alias push='git push origin'
alias tag='git tag'
alias newtag='git tag -a'

# .cfg gits
alias config='/usr/bin/git --git-dir=/home/sj13/.cfg/ --work-tree=/home/sj13'
alias confcommit='config commit -m'

## get error messages from journalctl
alias jctl="journalctl -p 3 -xb"

