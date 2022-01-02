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
alias rm='rm -iv'
alias rmr='rm -r -iv'
alias cp='cp -iv'
alias mv='mv -iv'
alias cb='cd ../'
alias cl=''

#################################################################################


# Searching 
#################################################################################

# find
# find / \( -perm -4000 -fprintf /root/suid.txt '%#m %u %p\n' \) , \\( -size +100M -fprintf /root/big.txt '%-10s %p\n' \)
alias findstickybit='sudo find / -perm -4000 -ls'


# grep
alias grep='grep --color'
alias lsmg='lsmod | grep'


# ls
#COLOR='--color=auto'
#alias ls='ls $COLOR'
alias lsl='ls -l'
alias lsa='ls -A'
alias lsla='ls -l -A'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias lslatest='ls -t | head'



#################################################################################
#################################################################################








#################################################################################
# Dealing with files
#################################################################################

# diff
alias diffa='diff -y --suppress-common-lines'



# find



# links
alias link='ls -sr'



# tar
alias mktar='tar -cf'
alias mkzip='tar -cfz'
alias lstar='tar -tvf'
#alias tarextract='tar -xf'
#alias ext='extract'

extract() {
    if [ -f $1 ]; then
        case $1 in

            *.tar.bz2)   tar xjf $1        	;;
            *.tar.gz)    tar xzf $1     	;;
            *.bz2)       bunzip2 $1       	;;
            *.rar)       unrar e $1     	;;
            *.gz)        gunzip $1     		;;
            *.tar)       tar xf $1        	;;
            *.tbz2)      tar xjvf $1      	;;
            *.tgz)       tar xzvf $1       	;;
            *.zip)       unzip $1     		;;
            *.Z)         uncompress $1  	;;
            *.7z)        7z x $1    		;;

            *)           echo "'$1' cannot be extracted via extract()" ;;
        esac
    else
        echo "'$1' is not a valid file"
    fi
}



#################################################################################
#################################################################################








#################################################################################
#### System related
#################################################################################



### Package system
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


### System information
#################################################################################

## Block devices
alias lsblk='lsblk -fa'



alias dmesg='dmesg -xeH'




## Networking
alias sdresolve='systemd-resolve --status'
alias query='resolvectl query'
alias dns='resolvectl dns'
alias iptl='iptables -L'
alias eipt='sudo vim /home/eletrao/firewall1.sh'

alias ip='ip --color'
alias ipb='ip --color --brief'

##


# pci express
alias pcitree='lspci -t -v'
alias pcimodules='lspci -k'



# /proc/
alias raminfo='sudo cat /proc/meminfo && sudo dmidecode -t memory'
alias cpuinfo='cat /proc/cpuinfo'
alias interrupts='less /proc/interrupts'
alias devices='less /proc/devices'
alias iomem='sudo less /proc/iomem'



# /sys/

# function 
# list input devices
alias lsid='list_input_devices.sh'



# modprobe
alias probealias='modprobe --config /dev/null --show-depends'



# uname
alias kernelversao='uname -r'
alias arquitetura='uname -m'
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

alias usts='systemctl status'
alias ucat='systemctl cat'
alias ushow='systemctl show | less'
alias lu='systemctl list-units'
alias luf='systemctl list-unit-files'
alias luff='systemctl list-units --failed'


alias ustop='sudo systemctl stop'
alias ugo='sudo systemctl start'
alias urr='sudo systemctl restart'
alias unable='sudo systemctl enable'
alias udis='sudo systemctl disable'


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


#github
alias gc='git clone'


# parsers
alias sed1p='sed -n "1p"'
alias sed2p='sed -n "2p"'


# dd 
alias ddex='printf "dd if=/dev/sda of=/tmp/COPY_OF_MBR bs=512 count=1\n"'






#################################################################################
#################################################################################



