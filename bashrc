#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

eval "$(thefuck --alias)"
neofetch
HISTSIZE=-1
HISTFILESIZE=-1
HISTCONTROL=ignoreboth
