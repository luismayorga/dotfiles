# COLOURS
#==================#
autoload -U colors && colors

export LSCOLORS=GxFxCxDxBxegedabagaced
export LS_COLORS="di=1;36;40:ln=1;35;40:so=1;32;40:pi=1;33;40:ex=1;31;40:bd=34;46:cd=34;43:su=0;41:sg=0;46:tw=0;42:ow=34;43:"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
alias ls='ls -G'

#Colors on man
man() {
    env LESS_TERMCAP_mb=$'\E[01;31m' \
        LESS_TERMCAP_md=$'\E[01;38;5;74m' \
        LESS_TERMCAP_me=$'\E[0m' \
        LESS_TERMCAP_se=$'\E[0m' \
        LESS_TERMCAP_so=$'\E[38;5;246m' \
        LESS_TERMCAP_ue=$'\E[0m' \
        LESS_TERMCAP_us=$'\E[04;38;5;146m' \
        man "$@"
}

# Git prompt
#==================#

GIT_PROMPT_EXECUTABLE="haskell"
source /usr/local/zsh-git-prompt/zshrc.sh
PROMPT='%B%m%:~%b$(git_super_status)%# '

#==================#

export PATH="/usr/local/bin:/usr/local/sbin:/usr/local/depot_tools:$PATH"
export JAVA_HOME=$(/usr/libexec/java_home)
export SCALA_HOME='/usr/local/scala'


[ -s "/Users/luis/.nvm/nvm.sh" ] && . "/Users/luis/.nvm/nvm.sh" # This loads nvm

# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _ignored
zstyle :compinstall filename '/Users/luis/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt notify
bindkey -v
# End of lines configured by zsh-newuser-install
