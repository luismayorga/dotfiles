# COLOURS
#==================#
#
autoload -U colors && colors

export PROMPT='%m %~ %# '
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export ZLE_RPROMPT_INDENT=0
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

alias glog='git log --decorate --graph --oneline --date-order'
alias gitpp='git status | fpp '
alias gits='git status '

#==================#

export PATH="/usr/local/bin:/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/node@8/bin:$PATH"
export PATH="/usr/local/opt/mysql-client/bin:$PATH"
alias npm-exec='PATH=$(npm bin):$PATH'

export EDITOR="/usr/bin/vim"

export JAVA_HOME=$(/usr/libexec/java_home)

# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _ignored
zstyle :compinstall filename '/Users/luis/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
HISTFILESIZE=100000
setopt notify
# End of lines configured by zsh-newuser-install

source ~/.zshrc_secrets
