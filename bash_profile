#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc
export GPG_TTY=$(tty)
export PATH=$PATH:/home/wertercatt/.local/bin:/home/wertercatt/.cargo/bin
cd () {
    rpg-cli cd "$@"
    builtin cd "$(rpg-cli pwd)"
}
ls () {
    command ls "$@"
    if [ $# -eq 0 ] ; then
        rpg cd -f .
        rpg ls
    fi
}
alias rpg-battle="rpg-cli cd -f . && rpg-cli battle"

alias rm="rpg-battle && rm"
alias rmdir="rpg-battle && rmdir"
alias mkdir="rpg-battle && mkdir"
alias touch="rpg-battle && touch"
alias mv="rpg-battle && mv"
alias cp="rpg-battle && cp"
alias chown="rpg-battle && chown"
alias chmod="rpg-battle && chmod"
export PS1='`rpg-cli -q | xargs` '