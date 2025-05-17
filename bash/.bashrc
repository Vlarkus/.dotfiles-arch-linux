# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# File navigation
alias ls='ls --color=auto'
alias la='ls -a'
alias ..='cd ..'

# Grep
alias grep='grep --color=auto'

# Clear
alias cls='clear'

# Bashrc modifications
alias bashupd='source ~/.bashrc'
alias bashedit='nvim ~/.bashrc'

# Package management
alias sysupdate='sudo pacman -Syu'
alias install='sudo pacman -S --needed --noconfirm'
alias remove='sudo pacman -Rns --noconfirm'
alias pkgs='pacman -Qe'
alias check='function _pkgfind()
	{
		pacman -Q | grep -i "$1" || 
		echo "No packages found matching \"$1\""
	};
	_pkgfind'

# Rerun previous command with sudo
alias bruh='sudo $(history -p !!)'

# Fastfetch
alias ff='fastfetch'

# Terminal commandline display
PS1='\w > '