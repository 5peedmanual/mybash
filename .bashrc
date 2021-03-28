#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if [[ -f ~/.bash_aliases ]]; then
	. ~/.bash_aliases
fi	

export GREP_OPTIONS='--color=auto'







PS1='[\u@\h \W]\$ '
