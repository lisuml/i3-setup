#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias cleanpac='sudo pacman -Rns $(pacman -Qtdq)'

PS1="[\[\033[01;32m\]\u\[\033[00m\]@\h \[\033[01;34m\]\W\[\033[00m\]]\$ "

source ~/scripts/portknock

export EDITOR=vim
export $(gnome-keyring-daemon --start --components=gpg,pkcs11,secrets,ssh)
