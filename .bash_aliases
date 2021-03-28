#
# ~/.bash_aliases
#

# -  
#################################################################################

#################################################################################












# Terminal related 
#################################################################################
alias tpr='tput reset'
alias rm='rm -f -iv'
alias rmr='rm -rf -iv'
alias cp='cp -iv'
alias mv='mv -iv'
alias cb='cd ../'

# ls
#################################################################################
COLOR='--color=auto'
alias ls='ls $COLOR'
alias lsl='ls -l $COLOR'
alias lsa='ls -A $COLOR'
alias lslatest='ls -t $COLOR | head'

# grep
#################################################################################
alias grep='grep --color'

#################################################################################









# My directories
#################################################################################
alias mecatronica='cd ~/Documents/mecatronica'
alias mecatronicaov='cd ~/Documents/mecatronica/mechatronics_overview/'
alias programming='cd ~/Documents/programming/'
alias bash='cd ~/Documents/programming/bash/'
alias gitclones='cd ~/Documents/programming/gitclones'
alias handbook='cd ~/Documents/linux_handbook'
#################################################################################





# Systemd related
#################################################################################
# journalctl
#################################################################################
alias journal='journalctl -xer'
alias journaluser='journalctl -xer --user'
alias journalsystem='journalctl -xer --system'
alias journalemergency='journalctl -xer -p 0'
alias journalalert='journalctl -xer -p 1'
alias journalcritical='journalctl -xer -p 2'
alias journalerror='journalctl -xer -p 3'
alias journalwarning='journalctl -xer -p 4'
alias journalnotice='journalctl -xer -p 5'
alias journalspace='journalctl --disk-usage'
#################################################################################


# Arch related
#################################################################################
# pacman
#################################################################################
alias pacin="sudo pacman -S"   				# install
alias pacup="sudo pacman -Syu" 				# update
alias pacrm="sudo pacman -Rns" 				# remove
alias pacclean="sudo pacman -Rns $(pacman -Qqtd)" 	# clean unneeded packages
#################################################################################




### tar
alias tarcreate='tar -cf'
alias tarcreatezip='tar -cfz'
alias tarlist='tar -tvf'
alias tarextract='tar -xf'

















