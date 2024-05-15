export ZSH="$HOME/.oh-my-zsh"

DISABLE_UNTRACKED_FILES_DIRTY="true"
plugins=(
    git
    nvm
)

source $ZSH/oh-my-zsh.sh

fpath+=('/opt/homebrew/share/zsh/site-functions')
autoload -U promptinit; promptinit
prompt pure
zstyle :prompt:pure:git:stash show yes

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

zstyle ':omz:plugins:nvm' lazy yes
zstyle ':omz:plugins:nvm' autoload yes
zstyle ':omz:plugins:nvm' silent-autoload yes # optionally remove the output generated by NVM when autoloading

eval "$(direnv hook zsh)"
