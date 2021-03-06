#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#Acerta o teclado
if [ -s ~/.Xmodmap ]; then
    xmodmap ~/.Xmodmap
fi

alias ls='ls --color=auto -F'
#PS1='[\u@\h \W]\$ '

#Cores do PS1
#export PS1="[\[$(tput bold)\]\[$(tput setaf 6)\]\u\[$(tput sgr0)\]@\[$(tput bold)\]\[$(tput setaf 1)\]\H\[$(tput sgr0)\] \[$(tput bold)\]\[$(tput setaf 3)\]\w\[$(tput sgr0)\]]$\[$(tput sgr0)\] "
export PS1="\[$(tput bold)\]\[\033[38;5;11m\]\w:\[$(tput sgr0)\]\[\033[38;5;9m\]->\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"


# User specific aliases and functions
alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'

complete -C '/usr/bin/aws_completer' aws
export PATH=/usr/local/aws/bin:$PATH
