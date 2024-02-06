# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"
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
	sudo
)

source $ZSH/oh-my-zsh.sh

export MANPATH="/usr/local/man:$MANPATH"
export LANG=en_US.UTF-8
export EDITOR='nvim'
export ARCHFLAGS="-arch x86_64"
export RANGER_LOAD_DEFAULT_RC="FALSE"
export CFLAGS=-DNO_TRUE_COLOURS=1
export CC=clang CXX=clang++

alias config='/usr/bin/git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"'
alias ls=lsd
# fixed flickering by downgrade nvidia drivers to version 535
# alias spotify='spotify --no-zygote --disable-gpu'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export PATH=$PATH:/home/glucthu/.spicetify
