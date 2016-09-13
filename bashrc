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

eval $(/usr/bin/gnome-keyring-daemon --start --components=gpg,pkcs11,secrets,ssh)
export GNOME_KEYRING_CONTROL GNOME_KEYRING_PID GPG_AGENT_INFO SSH_AUTH_SOCK
#export $(gnome-keyring-daemon --start --components=gpg,pkcs11,secrets,ssh)
