#Custom bash prompt via kirsle.net/wizards/ps1.html
# put into ~/.bashrc
export PS1="\[$(tput sgr0)\]\[$(tput bold)\]\[$(tput setaf 2)\]\u\[$(tput setaf 7)\]@\[$(tput setaf 1)\]\h\[$(tput setaf 7)\]: \[$(tput setaf 3)\]\W \[$(tput setaf 1)\]\\$\[$(tput sgr0)\]"

