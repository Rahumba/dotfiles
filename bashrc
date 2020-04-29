## VARIABLES
export PATH=$HOME/.local/bin:$PATH
export EDITOR='emacsclient -a "" -c'
export TERM="st-256color"
export HISTCONTROL=ignoredups:erasedups

## Don't do anything if not running interactively
[[ $- != *i* ]] && return

## PROMPT
PS1='\[\e[1m\]\[\e[32m\]\w \[\e[36m\]$\[\e[0m\] '
PS2='\[\e[36m\]>\[\e[0m\] '

## SETTINGS
bind 'set completion-ignore-case on'
bind 'set show-all-if-ambiguous on'
bind 'set colored-stats on'
bind 'set completion-display-width 2'
bind 'TAB:menu-complete'

## Options
shopt -s checkwinsize
shopt -s expand_aliases
shopt -s histappend
shopt -s autocd
shopt -s checkjobs

## ALIASES
alias ls='exa'
alias ll='ls -l'
alias l='ls -la'
alias vim='nvim'
alias emacs='emacsclient -a "" -c'

## COMPLETION
[ -r /usr/share/bash-completion/bash_completion   ] && . /usr/share/bash-completion/bash_completion

## Git prompt
if [ -f "$HOME/.bash-git-prompt/gitprompt.sh" ]; then
    GIT_PROMPT_ONLY_IN_REPO=1
    source $HOME/.bash-git-prompt/gitprompt.sh
fi
