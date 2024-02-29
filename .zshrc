
#==============================================================================#
#                    Lines configured by zsh-newuser-install                   #
#==============================================================================#

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd beep extendedglob nomatch notify
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/rob/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

#===============================================================#
#                            ALIASES                            #
#===============================================================#

#pacman
alias update="sudo pacman -Syu"

#remove orphans
alias orphans="pacman -Qtdq | sudo pacman -Rns"

#grub update
alias update-grub="sudo grub-mkconfig -o /boot/grub/grub.cfg"

#get fastest mirrors in your neighborhood
alias mirror="sudo reflector --verbose --country 'Canada' -l 15 --sort rate --save /etc/pacman.d/mirrorlist"

#ssh
alias boris="ssh rob@192.168.1.61"
alias lenny="ssh rob@192.168.1.59"

# run cmatrix
alias matrix="cmatrix -ba -u 2 -C green"

# local weather
alias weather="wttr Brantford"

#=============================================================================#
#                            Rob's Big Bag of Weird                           #
#=============================================================================#
#
export PATH=$PATH:~/Bin
export PATH=$PATH:~/Apps
export EDITOR=nvim

neofetch

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

powerline-daemon -q
. /usr/share/powerline/bindings/zsh/powerline.zsh

# End of file

