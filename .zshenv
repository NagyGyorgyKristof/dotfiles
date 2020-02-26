h=`date +%H`

if [ $h -lt 12 ]; then
  /usr/local/bin/figlet -f slant  Good morning Kristof
elif [ $h -lt 18 ]; then
  /usr/local/bin/figlet -f slant  Good afternoon Kristof
else
  /usr/local/bin/figlet -f slant  Good evening Kristof
fi


export ZDOTDIR="$HOME/.config/zsh"
export EDITOR='subl'
export GPG_TTY=$(tty)
export ZSH_CUSTOM=$HOME/zsh_custom
