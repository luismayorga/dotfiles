autoload -U colors && colors

export PROMPT='%m %1~ %(?.%F{63}~>.%F{167}~>)%f '

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export ZLE_RPROMPT_INDENT=0
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

alias glog='git log --decorate --graph --oneline --date-order'
alias gitpp='git status | fpp '
alias gits='git status'
alias gitp='git pull'
alias ll='ls -lah'
alias emacs='emacs -nw'

export PATH="/opt/homebrew/bin:$PATH"
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"
export EDITOR="/usr/bin/vim"
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
#export JAVA_HOME=`/usr/libexec/java_home -v 11.0.19`
#export JAVA_HOME=`/usr/libexec/java_home -v 17.0.1`

export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && . "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && . "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

eval "$(direnv hook zsh)"

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
