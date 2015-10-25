export ZSH=/home/mintpaw/.oh-my-zsh

ZSH_THEME="smt"

CASE_SENSITIVE="true"
COMPLETION_WAITING_DOTS="true"

# HYPHEN_INSENSITIVE="true"
# DISABLE_AUTO_UPDATE="true"
# export UPDATE_ZSH_DAYS=13
# DISABLE_LS_COLORS="true"
# DISABLE_AUTO_TITLE="true"
# ENABLE_CORRECTION="true" # Autocorrect
# DISABLE_UNTRACKED_FILES_DIRTY="true"
# HIST_STAMPS="mm/dd/yyyy"
# ZSH_CUSTOM=/path/to/new-custom-folder

plugins=(git)

source $ZSH/oh-my-zsh.sh
export LANG=en_US.UTF-8
export ARCHFLAGS="-arch x86_64"
export SSH_KEY_PATH="~/.ssh/dsa_id"

# MintPaw
powerline-daemon -q
. /usr/lib/python3.5/site-packages/powerline/bindings/zsh/powerline.zsh

export EDITOR='vim'
export TERM=xterm
export LD_LIBRARY_PATH=~/tools/neko
export HAXE_STD_PATH=~/tools/haxe/std
export PATH=$PATH:~/tools/haxe
export PATH=$PATH:~/tools/neko
alias openfl='haxelib run openfl'

git config --global push.default simple
git config --global credential.helper 'cache --timeout=9999'

alias ls='ls --color=auto'
alias wifi_home='bash ~/sh/connect_home_wifi.sh'
alias wifi_nmt='bash ~/sh/connect_nmt_wifi.sh'
alias lock='i3lock'

sub() {
	subl $1 > /dev/null 2>&1 &
}

if [ "$DISPLAY" ]; then
	if [ "$TMUX" = "" ]; then tmux; fi
fi
