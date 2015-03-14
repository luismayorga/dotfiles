# COLOURS
# =======

export CLICOLOR=1
# dark bg colours
#export LSCOLORS=GxFxCxDxBxegedabagaced

#export GITAWAREPROMPT=~/.bash/git-aware-prompt
#source $GITAWAREPROMPT/main.sh
#export PS1="\e[1m\e[38;5;089m\h:\W \u \e[38;5;043m\$git_branch\e[38;5;197m\$git_dirty\[$txtrst\]\$ "

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

# INCLUDE

export PATH="/usr/local/bin:/usr/local/sbin:$PATH"
export JAVA_HOME=$(/usr/libexec/java_home)
export SCALA_HOME='/usr/local/scala'

[ -s "/Users/luis/.nvm/nvm.sh" ] && . "/Users/luis/.nvm/nvm.sh" # This loads nvm
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi
