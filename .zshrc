export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="agnoster"
DISABLE_UNTRACKED_FILES_DIRTY="true"

zstyle ':omz:update' frequency 7

plugins=(
	aliases
	colored-man-pages
	colorize
	command-not-found
	copypath
	cp
	history
	safe-paste
	web-search
	copyfile
  archlinux
  emoji-clock
  lol
  rand-quote
)

source $ZSH/oh-my-zsh.sh

export MANPATH="/usr/local/man:$MANPATH"
export LANG=en_US.UTF-8
export EDITOR='nvim'
export ARCHFLAGS="-arch x86_64"
export RANGER_LOAD_DEFAULT_RC="FALSE"

alias config='/usr/bin/git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"'
