export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

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

export PATH="/usr/local/bin:$PATH"
export JAVA_HOME=$(/usr/libexec/java_home)
export SCALA_HOME='/usr/local/scala'
export CLASSPATH="/usr/local/Cellar/antlr/4.2/antlr-4.2-complete.jar:$CLASSPATH"
alias grun='java org.antlr.v4.runtime.misc.TestRig'

#[ -s "/Users/luis/.nvm/nvm.sh" ] && . "/Users/luis/.nvm/nvm.sh" # This loads nvm
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi
