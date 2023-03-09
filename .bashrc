#    _               _              
#   | |__   __ _ ___| |__  _ __ ___ 
#   | '_ \ / _` / __| '_ \| '__/ __|
#  _| |_) | (_| \__ \ | | | | | (__ 
# (_)_.__/ \__,_|___/_| |_|_|  \___|
# 
# by Stephan Raabe (2023)
# -----------------------------------------------------
# ~/.bashrc
# -----------------------------------------------------

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
PS1='[\u@\h \W]\$ '

# -----------------------------------------------------
# ALIASES
# -----------------------------------------------------
alias update-grub='sudo grub-mkconfig -o /boot/grub/grub.cfg'

alias c='clear'
alias w='~/dotfiles/scripts/updatewal.sh'

alias instp='sudo pacman -S'
alias insty='yay -S'

# APPLICATIONS
alias ls='exa -al'
alias mutt='neomutt'
alias m='neomutt'
alias shutdown='sudo shutdown -h now'
alias v='nvim'
alias r='ranger'
alias t='sudo timeshift --list'
alias ts='~/dotfiles/scripts/snapshot.sh'
alias matrix='cmatrix'
alias screenshot='scrot -d 3 -c -z -u'
alias nf='neofetch'

# GIT
alias gs="git status"
alias ga="git add"
alias gc="git commit -m"
alias gp="git push"
alias gpl="git pull"
alias gpf="git stash; git pull"

# SCRIPTS
alias gr='python ~/dotfiles/scripts/growthrate.py'
alias chat='python ~/mychatgpt/mychatgpt.py'
alias ascii='~/dotfiles/scripts/figlet.sh'

# VIRTUAL MACHINE
# alias vm='~/dotfiles/scripts/launchvm.sh'
alias vm='~/dotfiles/scripts/looking-glass.sh'
alias vmstart='virsh --connect qemu:///system start win11'
alias vmstop='virsh --connect qemu:///system destroy win11'

# EDIT CONFIG FILES
alias confq='vim ~/dotfiles/qtile/config.py'
alias confp='vim ~/dotfiles/picom/picom.conf'
alias confb='vim ~/dotfiles/.bashrc'

# IMAGE MANIPULATION

# EDIT NOTES
alias notes='vim ~/notes.txt'

# -----------------------------------------------------
# START STARSHIP
# -----------------------------------------------------
eval "$(starship init bash)"

# -----------------------------------------------------
# PYWAL
# -----------------------------------------------------
cat ~/.cache/wal/sequences

# -----------------------------------------------------
# NEOFETCH
# -----------------------------------------------------
neofetch