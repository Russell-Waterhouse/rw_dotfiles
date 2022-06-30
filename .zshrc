# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd extendedglob nomatch notify
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/russellw/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall


if [ -d "$HOME/.bin" ] ;
  then PATH="$HOME/.bin:$PATH"
fi

if [ -d "$HOME/.local/bin" ] ;
  then PATH="$HOME/.local/bin:$PATH"
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

EDITOR=vim

alias dnf='sudo dnf'

###################################
# Shortcuts for things I do often #
###################################

alias 426='cd ~/src/426'
alias 499='cd ~/src/499/back-end/'

alias todo='vim ~/Documents/todo.txt'
alias toread='vim ~/Documents/toread.txt'

# airplane mode
alias airplane_on='nmcli radio wifi off && sudo systemctl stop bluetooth && echo AIRPLANE MODE ENABLED'
alias airplane_off='nmcli radio wifi on && sudo systemctl start bluetooth && echo AIRPLANE MODE DISABLED'

#tailscale
alias tailscaleup='sudo systemctl start tailscaled.service'
alias tailscaledown='sudo systemctl stop tailscaled.service'

#docker 
alias dockerup='sudo systemctl start docker.service'

# Aliases for my personal scripts
alias scrum='~/scripts/log.sh'


# tldr is short man page 
alias ma=tldr
alias vimq='vim ~/.config/qtile/config.py'
alias :q='exit'
alias day='redshift -P -O 6500'
alias night='redshift -P -O 2500'
alias oops='cat ~/.forgettable_commands | yad --text-info & '
alias zl='less .zoomlinks.txt'
alias metasploit='msfconsole'

# git shortcuts
alias gpu='git push -u'
alias gaa='git add -A'
alias gcm='git commit -m'
alias status='git status'

# for backing up dot files
# source explaining these: https://www.atlassian.com/git/tutorials/dotfiles
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias configp='config push -u origin main'

# killall shortcuts
alias kd='killall Discord && exit'
alias km='killall mailspring && exit'
alias ks='killall slack && exit'
alias kf='killall flameshot && exit'
alias kj='killall jetbrains-toolbox && exit'
alias kt='killall teams && exit'
alias kz='killall zoom && exit'

# Shortcut cd commands 
alias cdc='cd ~/code'
alias cdn='cd ~/Documents/2022_spring/notes'
alias cdh='cd ~/code/haskell'
alias cdr='cd ~/code/haskell/real_haskell'
alias cds='cd ~/Documents/notes/seng350'
alias cde='cd ~/Documents/notes/eos350'
alias cdcp='cd ~/code/ECE455_FINAL/'
alias essay='cd ~/Documents/essays/'

#list
alias ls='ls --color=auto'
alias la='ls -a'
alias ll='ls -lah -rt'
alias l='ls'
alias l.="ls -A | egrep '^\.'"

#fix obvious typo's
alias cd..='cd ..'
alias pdw="pwd"
alias cim='vim'

## Colorize the grep command output for ease of use (good for log files)##
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

#readable output
alias df='df -h'

#free
alias free="free -mt"

#continue download
alias wget="wget -c"

#userlist
alias userlist="cut -d: -f1 /etc/passwd"


# this command updates repos
alias up='sudo dnf update'

# update & shut down
alias usd='up && shutdown now'

#ps
alias psa="ps auxf"
alias psgrep="ps aux | grep -v grep | grep -i -e VSZ -e"

#grub update
alias update-grub="sudo grub-mkconfig -o /boot/grub/grub.cfg"

#stack aliases
alias ghci='stack ghci'
alias st='stack test'
alias rst='reset && stack test'

#copy/paste all content of /etc/skel over to home folder - backup of config created - beware
alias skel='[ -d ~/.config ] || mkdir ~/.config && cp -Rf ~/.config ~/.config-backup-$(date +%Y.%m.%d-%H.%M.%S) && cp -rf /etc/skel/* ~'
#backup contents of /etc/skel to hidden backup folder in home/user
alias bupskel='cp -Rf /etc/skel ~/.skel-backup-$(date +%Y.%m.%d-%H.%M.%S)'

#copy bashrc-latest over on bashrc - cb= copy bashrc
alias cb='sudo cp /etc/skel/.bashrc ~/.bashrc && source ~/.bashrc'
#copy /etc/skel/.zshrc over on ~/.zshrc - cb= copy zshrc
#alias cz='sudo cp /etc/skel/.zshrc ~/.zshrc && exec zsh'

#switch between bash and zsh
alias tobash="sudo chsh $USER -s /bin/bash && echo 'Now log out.'"
alias tozsh="sudo chsh $USER -s /bin/zsh && echo 'Now log out.'"

#hardware info --short
alias hw="hwinfo --short"


#search content with ripgrep
alias rg="rg --sort path"

#get the error messages from journalctl
alias jctl="journalctl -p 3 -xb"

#gpg
#verify signature for isos
alias gpg-check="gpg2 --keyserver-options auto-key-retrieve --verify"
alias fix-gpg-check="gpg2 --keyserver-options auto-key-retrieve --verify"
#receive the key of a developer
alias gpg-retrieve="gpg2 --keyserver-options auto-key-retrieve --receive-keys"
alias fix-gpg-retrieve="gpg2 --keyserver-options auto-key-retrieve --receive-keys"



cat ~/.ascii-art/flaming_skull.txt 

