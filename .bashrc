#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
[[ "$(whoami)" = "root" ]] && return
[[ -z "$FUNCNEST" ]] && export FUNCNEST=100          # limits recursive functions, see 'man bash'


export PATH=~/.local/bin:$PATH
export PATH=~/go/bin:$PATH
export PATH=$PATH:/usr/local/go/bin
export EDITOR=nvim


source ~/.bash_function
source ~/.bash_alias
source ~/.bash_color
