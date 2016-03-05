# vim:syntax=sh

alias l='ls -CF -lh'
alias ll='ls -l'
alias la='ls -A'

alias reload='source ~/.bash_profile'

alias c='clear'
alias e='exit'


alias t='tree -C -h'

alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../..'
alias grep='grep --color'
alias v='vim'
alias sv='sudo vim'

# show sorted directory sizes for all directories
alias dua='du -ch --max-depth=1'
alias duv='du -sch ./*'
alias duh='du -sch ./.*'

# human df
alias dfh='df -h'

# system monitoring
alias topcpu='ps aux | sort -n +2 | tail -10'  # top 10 cpu processes
alias topmem='ps aux | sort -n +3 | tail -10'  # top 10 memory processes
alias psg='ps aux | grep'

alias chess="/Applications/Chess.app/Contents/Resources/sjeng.ChessEngine"

twitch() {
 livestreamer twitch.tv/$1 best
}
