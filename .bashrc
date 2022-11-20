#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
[[ "$(whoami)" = "root" ]] && return
[[ -z "$FUNCNEST" ]] && export FUNCNEST=100          # limits recursive functions, see 'man bash'

set -o vi

# emacs shell mode
if [ "dumb" == "$TERM" ] ; then
    alias m='cat'
    alias less='cat'
    alias more='cat'
    export PAGER=cat
    export TERM=xterm-color
else
    alias l='less'
    alias m='more'
fi

export EDITOR=emacsclient
export GIT_EDITOR=$EDITIOR

export PATH=~/.local/bin:$PATH
export PATH=~/go/bin:$PATH
export PATH=$PATH:/usr/local/go/bin

source ~/.bash_function
source ~/.bash_alias
source ~/.bash_color
