# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=100000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/mintpaw/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

alias ls='ls --color=auto'
alias sub='subl3'
alias wifi_home='bash ~/scripts/connect_home_wifi.sh'
alias wifi_nmt='bash ~/scripts/connect_nmt_wifi.sh'

if [ "$TMUX" = "" ]; then tmux; fi
