alias lm="ls -lhA"
# common commands
alias ..='cd ..'
alias .2='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'
alias lm='ls | more'
alias ll='ls -lFh'
alias la='ls -alFh --group-directories-first'
alias l1='ls -1F --group-directories-first'
alias l1m='ls -1F --group-directories-first | more'
alias lh='ls -ld .??*'
alias lsn='ls | cat -n'
alias mkdir='mkdir -p -v'
alias cp='cp --preserve=all'
alias cpv='cp --preserve=all -v'
alias cpr='cp --preserve=all -R'
alias cpp='rsync -ahW --info=progress2'
alias cs='printf "\033c"'
alias q='exit'
alias c='clear'
alias count='find . -type f | wc -l'
alias fbig='find . -size +128M -type f -printf '%s %p\n'| sort -nr | head -16'
alias randir='mkdir -p ./$(cat /dev/urandom | tr -cd 'a-z' | head -c 4)/$(cat /dev/urandom | tr -cd 'a-z' | head -c 4)/'

# memory/CPU
alias df='df -Tha --total'
alias free='free -mt'
alias psa='ps auxf'
alias cputemp='sensors | grep Core'

# applications shortcuts
alias myip='curl -s -m 5 https://ipleak.net/json/'
alias e=$editor
alias p='python3'
alias w3mduck='w3m https://duckduckgo.com'
alias ngrok='/data/data/com.termux/files/home/./ngrok'
alias edit-bashrc=$editor' /data/data/com.termux/files/usr/etc/bash.bashrc'
alias timenow='date +"%T"'
alias datenow='date +"%d-%m-%Y"'
alias untar='tar -zxvf '
alias wget='wget -c '
alias genpass='openssl rand -base64 12'
alias phttp='python -m http.server 8000'
alias kn='python /data/data/com.termux/files/home/keynote/keynote.py' # https://github.com/knightfall-cs/keynote


# proot
alias root='proot -0 $(which bash)'


# ts
alias tsc='~/node_modules/.bin/tsc'
alias tss='~/node_modules/.bin/tsserver'


# node js
alias baris='find . -name "*.js" -not -path "./node_modules/*" | xargs wc -l'


#git
alias graph='git log --all --decorate --oneline --graph'
alias logfile='git status --porcelain'

#postgresql
alias grass='pg_ctl -D /data/data/com.termux/files/usr/var/lib/postgresql -l logfile start'

# nextjs
alias next='create-next-app'

# termux api
alias camera="termux-camera-photo /sdcard/test.jpg"
alias web="lampp start --all"

alias ubuntu="proot-distro login ubuntu-lts"
