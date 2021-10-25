#
# ~/.bash_aliases
#

# -  
#################################################################################

#################################################################################



OS_RELEASE=$(cat /etc/os-release | awk -F= '/NAME="/ {print $2}'  | sed -n '1p' | cut -d'"' -f 2)





#################################################################################
# Terminal  
#################################################################################



# Moving
#################################################################################

alias tpr='tput reset'
alias rm='rm -f -iv'
alias rmr='rm -rf -iv'
alias cp='cp -iv'
alias mv='mv -iv'
alias cb='cd ../'

#################################################################################


# Searching 
#################################################################################

# find
# find / \( -perm -4000 -fprintf /root/suid.txt '%#m %u %p\n' \) , \\( -size +100M -fprintf /root/big.txt '%-10s %p\n' \)
alias findstickybit='sudo find / -perm -4000 -ls'


# grep
alias grep='grep --color'


# ls
COLOR='--color=auto'
alias ls='ls $COLOR'
alias lsl='ls -l $COLOR'
alias lsa='ls -A $COLOR'
alias lslatest='ls -t $COLOR | head'



#################################################################################
#################################################################################








#################################################################################
# Dealing with files
#################################################################################

# tar
alias tarcreate='tar -cf'
alias tarcreatezip='tar -cfz'
alias tarlist='tar -tvf'
alias tarextract='tar -xf'



#################################################################################
#################################################################################








#################################################################################
# System related
#################################################################################



#  Package system
#################################################################################

if [ $OS_RELEASE == "Arch" ]; then
alias pacin="sudo pacman -S"   				# install
alias pacup="sudo pacman -Syu" 				# update
alias pacrm="sudo pacman -Rns" 				# remove
alias pacclean="sudo pacman -Rns $(pacman -Qqtd)" 	# clean unneeded packages
fi

if [ $OS_RELEASE == "Ubuntu" ]; then

alias pkginstalls="dpkg -c"   				# .deb pkg installs
alias pkginfo="dpkg -p"					# .deb information
alias aptup="sudo apt update && sudo apt upgrade"

fi

#################################################################################


# System information
#################################################################################

# pci express
alias pcitree='lspci -t -v'
alias pcimodules='lspci -k'



# /proc/
alias raminfo='sudo cat /proc/meminfo && sudo dmidecode -t memory'
alias cpuinfo='cat /proc/cpuinfo'

# uname
#alias sysinfo='uname -rsv'
osinfo() {
	VERSION_STR=$(uname -v)
	printf "os release name	: 	%s\n" 			$(uname -r)
	printf "os name		:	%s\n" 			$(uname -s)
	printf "os version	:	%s\n" 			$VERSION_STR
}


alias sysarch='uname -m'
alias hostname='uname -n'

#################################################################################


# journalctl
#################################################################################

journalalias() {
printf "Available alias:\n"
printf "journal\njournaluser\njournalsystem\n"
printf "journalemergency\njournalalert\njournalcritical\n"
printf "journalerror\njournalnotice\njournalspace\n"
}

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


# systemd 
#################################################################################

alias unitstat='systemctl status'
alias unitcat='systemctl cat'
alias unitshow='systemctl show | less'


alias unitstop='sudo systemctl stop'
alias unitstart='sudo systemctl start'
alias unitdis='sudo systemctl disable'


alias cgls='systemd-cgls'
alias cgtop='systemd-cgtop'
alias cgtopm='systemd-cgtop -m'
alias ttinit='systemd-analyze blame | head -7' # list units by time to init

#################################################################################



#################################################################################
#################################################################################








#################################################################################
# miscellaneous
#################################################################################


# parsers
alias sed1p='sed -n "1p"'
alias sed2p='sed -n "2p"'


# dd 
alias ddex='printf "dd if=/dev/sda of=/tmp/COPY_OF_MBR bs=512 count=1\n"'



## home fs
#alias mecatronica='cd ~/Documents/mecatronica'
#alias mecatronicaov='cd ~/Documents/mecatronica/mechatronics_overview/'
#alias programming='cd ~/Documents/programming/'
#alias bash='cd ~/Documents/programming/bash/'
#alias gitclones='cd ~/Documents/programming/gitclones'
#alias handbook='cd ~/Documents/linux_handbook'
#
#create_home()
#{
#docdirs=(~/Documents/mecatronica ~/Documents/programming ~/Documents/linux)
#for i in ${docdirs[@]}; do
#	printf "creating %s\n" $i
#	mkdir $i
#done
#}



#################################################################################
#################################################################################



