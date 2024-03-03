#
# ~/.bashrc
#

#Ibus settings if you need them
#type ibus-setup in terminal to change settings and start the daemon
#delete the hashtags of the next lines and restart
#export GTK_IM_MODULE=ibus
#export XMODIFIERS=@im=dbus
#export QT_IM_MODULE=ibus

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export HISTCONTROL=ignoreboth:erasedups

# Make vim the default editor
export EDITOR='nvim'
export VISUAL='nvim'


if [ -d "$HOME/.bin" ] ;
  then PATH="$HOME/.bin:$PATH"
fi

if [ -d "$HOME/.local/bin" ] ;
  then PATH="$HOME/.local/bin:$PATH"
fi

if [ -d "$HOME/scripts" ] ;
  then PATH="$HOME/scripts:$PATH"
fi

# add java to path
PATH="$PATH:$HOME/.jdks/openjdk-20.0.2/bin/"

# Add ruby to path
PATH="$PATH:/usr/share/gems:$HOME/.local/share/gem/ruby:/usr/local/share/gems"

#ignore upper and lowercase when TAB completion
bind "set completion-ignore-case on"

alias dnf='sudo dnf'

###################################
# Shortcuts for things I do often #
###################################

# tldr is a short man page 
alias ma=tldr

# vim-like exit
alias :q='exit'

# file of shortcuts
alias sc='less ~/.shortcuts'


# git shortcuts
alias gp="git push"
alias st="git status"
alias di="git diff"
alias co="git checkout"
gpu() {
    CURRBRANCH=$(git rev-parse --abbrev-ref HEAD)
    firefox $(git push --set-upstream origin $CURRBRANCH 2>&1 | grep --only-matching https://github.com/.*/$CURRBRANCH)
}
gcam() {
    git add -A
    git commit -m "$*"
}
alias gaa="git add -A"

# for backing up dot files
# source explaining these: https://www.atlassian.com/git/tutorials/dotfiles
alias config='/usr/bin/git --git-dir=/home/russ/.cfg/ --work-tree=/home/russ'
alias configp='config push -u origin main'

#list
alias ls='ls -lah --color=auto'

# v is shorter than vim
alias v='nvim'

# e - short for edit
alias e='nvim .'

#fix obvious typo's
alias cd..='cd ..'
alias pdw="pwd"
alias cim='vim'

## Colorize the grep command output for ease of use (good for log files)##
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

#continue download
alias wget="wget -c"

# this command updates the packages
alias up='sudo dnf update -y && flatpak update -y'

# update & shut down
alias usd='up && shutdown now'

#ps
alias psa="ps auxf"

#switch between bash and zsh
alias tobash="sudo chsh $USER -s /bin/bash && echo 'Now log out.'"
alias tozsh="sudo chsh $USER -s /bin/zsh && echo 'Now log out.'"

# docker commands
alias dockerup='sudo systemctl start docker.service'

# # ex = EXtractor for all kinds of archives
# # usage: ex <file>
ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1   ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *.deb)       ar x $1      ;;
      *.tar.xz)    tar xf $1    ;;
      *.tar.zst)   tar xf $1    ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

# Node version manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


#[ -f "/home/russ/.ghcup/env" ] && source "/home/russ/.ghcup/env" # ghcup-env
[ -f "/home/russ/.ghcup/env" ] && source "/home/russ/.ghcup/env" # ghcup-env

alias open='nautilus'
alias fabric='~/repos/fabric/client/fabric'
alias t='tmux'


# Show the current git branch in the terminal prompt
# Prompt
export PS1="\\w[\$(git branch 2>/dev/null | grep '^*' | colrm 1 2)]\$ "
. "$HOME/.cargo/env"

eval "$(zoxide init bash)"

alias cd="z"

# start a terminal with a fun little ascii art drawing
cat ~/.ascii-art/snowflake.txt 

