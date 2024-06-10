user_name="$(whoami)"
editor="nano"

# `grep default` highlight color
export GREP_COLOR="1;32"

# Colored man
export MANPAGER="less -R --use-color -Dd+g -Du+b"

# EDITOR
export EDITOR=$editor
export SUDO_EDITOR=$editor
export VISUAL="nano"

# USER
export USER=$user_name

# Path
export ETC="/data/data/com.termux/files/usr/etc"

#### History settings #################

# append to the history file, don't overwrite it
shopt -s histappend

# load results of history substitution into the readline editing buffer
shopt -s histverify

# don't put duplicate lines or lines starting with space in the history
HISTCONTROL=ignoreboth

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

#### Autocompletion ###################

# cycle through all matches with 'TAB' key
bind 'TAB:menu-complete'

# necessary for programmable completion
shopt -s extglob

# cd when entering just a path
shopt -s autocd

#### Prompt ###########################
sym=" @ " #symbol of prompt
bar_cr="36" #color of bars
name_cr="41" #color of user & host
end_cr="37" #color of prompt end
dir_cr="36" #color of current directory


PS1='\[\033[01;${bar_cr}m\]┌──(\[\033[41;${name_cr}m\]${user_name}${sym}\h\[\033[0;${bar_cr}m\])-[\[\033[0;${dir_cr}m\]\w\[\033[0;${bar_cr}m\]]
\[\033[0;${bar_cr}m\]└─\[\033[1;${end_cr}m\]\$\[\033[0m\] '

#### Aliases ##########################

# enable color support of ls, grep and ip, also add handy aliases
if [[ -x /usr/bin/dircolors ]]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
        alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias diff='diff --color=auto'
    alias ip='ip -color'
fi

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

#### Functions ########################

# If user has entered command which invokes non-available
# utility, command-not-found will give a package suggestions.
if [ -x /data/data/com.termux/files/usr/libexec/termux/command-not-found ]; then
        command_not_found_handle() {
                /data/data/com.termux/files/usr/libexec/termux/command-not-found "$1"
        }
fi

# nnn "cd on quit"
#n()
#{
#    # Block nesting of nnn in subshells
#    if [ -n $NNNVL ] && [ "${NNNVL:-0}" -ge 1 ]; then
#        echo "nnn is already running"
#        return
#    fi
#
    # The behaviour is set to cd on quit (nnn checks if NNN_TMPFILE is set)
    # If NNN_TMPFILE is set to a custom path, it must be exported for nnn to
    # see. To cd on quit only on ^G, remove the "export" and make sure not to
    # use a custom path, i.e. set NNN_TMPFILE *exactly* as follows:
    #   NNN_TMPFILE="${XDG_CONFIG_HOME:-$HOME/.config}/nnn/.lastd"
#    export NNN_TMPFILE="${XDG_CONFIG_HOME:-$HOME/.config}/nnn/.lastd"

    # Unmask ^Q (, ^V etc.) (if required, see `stty -a`) to Quit nnn
    # stty start undef
    # stty stop undef
    # stty lwrap undef
    # stty lnext undef

#    nnn "$@"

#   if [ -f "$NNN_TMPFILE" ]; then
#        . "$NNN_TMPFILE"
#        rm -f "$NNN_TMPFILE" > /dev/null
#    fi
#}

today() {
    echo "$(date +%F)"
}

#### Display ########################

#echo -e "\e[01;32m"
clear

echo -e "\e[37;41m"
#echo " >======>     >=======>       >>        "
#echo " >=>    >=>   >=>            >>=>       "
#echo " >=>    >=>   >=>           >> >=>      "
#echo " >> >==>      >=====>      >=>  >=>     "
#echo " >=>  >=>     >=>         >=====>>=>    "
#echo " >=>    >=>   >=>        >=>      >=>   "
#echo " >=>      >=> >=======> >=>        >=>  "

termux-toast "Welcome To The Asgard"
#neofetch
echo -e "\e[0m"
info
echo -e "\e[0m"
