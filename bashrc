#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias l='ls -la --color=auto'
alias ll='ls -l --color=auto'

GREEN="$(tput setaf 2)"
RESET="$(tput sgr0)"

PS1='\[${GREEN}\][\W] \$  \[${RESET}\]'

# bash options
shopt -s checkwinsize
shopt -s histappend

# bash settings
bind 'set completion-ignore-case on'
bind 'set show-all-if-ambiguous on'
bind 'set colored-stats on'
bind 'set completion-display-width 2'
bind 'TAB:menu-complete'


# automatically start dwm when running on tty1
[ "$(tty)" = "/dev/tty1" ] && exec startx
