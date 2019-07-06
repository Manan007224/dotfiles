export ZSH="/home/manan/.oh-my-zsh"

export TERM="xterm-256color"


plugins=(git)

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
export LANG=en_US.UTF-8


# golang
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# Start rbenv
export PATH="$HOME/.rbenv/bin:$PATH"

export EDITOR="vim"
export GIT_EDITOR=vim

alias status='git status'
alias add='git add'
alias merge='git merge'
alias clone='git clone'
alias rbm= 'git rebase -i master'

# stupid aliases
alias rm='rm -rf'
alias ls='ls -aril'
alias cp='cp -riv'
alias mv='mv -iv'
alias mk='mkdir'
alias ..1='cd ..'
alias ..2='cd ../..'
alias ..3='cd ../../..'
alias cl='clear'
alias ex='exit'

_cmake() {
	mkdir $1
	cd $1
}

alias cmake=_cmake
alias vi='vim'
alias docs='cd ~/Documents'
alias dsk='cd ~/Desktop'
alias dls='cd ~/Downloads'
alias bashr='. ~/.bash_profile'

# extract script
# utilities to allow you to decompress just about any compressed file format.
# supports tar xvzf
#		   bunzip2
#		   gunzip
#		   unzip 1,2
#		   winrar
#	       uncompress
#		   unxz
#		   cabextract
# This function takes the first argument and calls the appropriate utility program based on the file extension used.

function extract {
 if [ -z "$1" ]; then
    # display usage if no parameters given
    echo "Usage: extract <path/file_name>.<zip|rar|bz2|gz|tar|tbz2|tgz|Z|7z|xz|ex|tar.bz2|tar.gz|tar.xz>"
    echo "       extract <path/file_name_1.ext> [path/file_name_2.ext] [path/file_name_3.ext]"
    return 1
 else
    for n in $@
    do
      if [ -f "$n" ] ; then
          case "${n%,}" in
            *.tar.bz2|*.tar.gz|*.tar.xz|*.tbz2|*.tgz|*.txz|*.tar) 
                         tar xvf "$n"       ;;
            *.lzma)      unlzma ./"$n"      ;;
            *.bz2)       bunzip2 ./"$n"     ;;
            *.rar)       unrar x -ad ./"$n" ;;
            *.gz)        gunzip ./"$n"      ;;
            *.zip)       unzip ./"$n"       ;;
            *.z)         uncompress ./"$n"  ;;
            *.7z|*.arj|*.cab|*.chm|*.deb|*.dmg|*.iso|*.lzh|*.msi|*.rpm|*.udf|*.wim|*.xar)
                         7z x ./"$n"        ;;
            *.xz)        unxz ./"$n"        ;;
            *.exe)       cabextract ./"$n"  ;;
            *)
                         echo "extract: '$n' - unknown archive method"
                         return 1
                         ;;
          esac
      else
          echo "'$n' - file does not exist"
          return 1
      fi
    done
fi
}

