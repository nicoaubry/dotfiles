# ------
# Prompt
# ------
export PS1="\n$C_LIGHTGREEN\u$C_DEFAULT@$C_LIGHTBLUE\h$C_DEFAULT [\w] :$C_DEFAULT "

# ----------
# Block size
# ----------
export BLOCKSIZE=1k


# ---------------
# Terminal colors
# ---------------
export CLICOLOR=1
export LSCOLORS=gxfxbEaEBxxEhEhBaDaCaD

C_DEFAULT="\[\033[m\]"
C_WHITE="\[\033[1m\]"
C_BLACK="\[\033[30m\]"
C_RED="\[\033[31m\]"
C_GREEN="\[\033[32m\]"
C_YELLOW="\[\033[33m\]"
C_BLUE="\[\033[34m\]"
C_PURPLE="\[\033[35m\]"
C_CYAN="\[\033[36m\]"
C_LIGHTGRAY="\[\033[37m\]"
C_DARKGRAY="\[\033[1;30m\]"
C_LIGHTRED="\[\033[1;31m\]"
C_LIGHTGREEN="\[\033[1;32m\]"
C_LIGHTYELLOW="\[\033[1;33m\]"
C_LIGHTBLUE="\[\033[1;34m\]"
C_LIGHTPURPLE="\[\033[1;35m\]"
C_LIGHTCYAN="\[\033[1;36m\]"
C_BG_BLACK="\[\033[40m\]"
C_BG_RED="\[\033[41m\]"
C_BG_GREEN="\[\033[42m\]"
C_BG_YELLOW="\[\033[43m\]"
C_BG_BLUE="\[\033[44m\]"
C_BG_PURPLE="\[\033[45m\]"
C_BG_CYAN="\[\033[46m\]"
C_BG_LIGHTGRAY="\[\033[47m\]"


# --------------
# Default editor
# --------------
export EDITOR=/usr/bin/atom


# -------
# Aliases
# -------

alias ~="cd ~"                                                    # Go Home
alias dropbox='cd ~/Dropbox'                                      # Go to dropbox folder
alias icloud='cd ~/Library/Mobile\ Documents/com~apple~CloudDocs' # Go to icloud folder
alias cd.='cd ../'                                                # Go back 1 directory level
alias cd..='cd ../../'                                            # Go back 2 directory levels
alias cd...='cd ../../../'                                        # Go back 3 directory levels

alias cp='cp -iv'                                                 # Preferred 'cp' implementation
alias mv='mv -iv'                                                 # Preferred 'mv' implementation
alias mkdir='mkdir -pv'                                           # Preferred 'mkdir' implementation

alias ll='ls -lhaFp'                                              # Preferred 'ls' implementation
alias lr="ls -lhaFpR"                                             # List recursively
alias lrtree='ls -R | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\'' | less' # List recursively as tree
alias lg="ls -lhaFp | grep"                                       # List with grep
alias lgr="ls -lhaFpR | grep"                                     # List with grep recursively

alias less='less -FSRXc'                                          # Preferred 'less' implementation
alias f='open -a Finder ./'                                       # Opens current directory in MacOS Finder
alias qfind="sudo find . -name "                                  # Quickly search for file
alias c='clear'                                                   # Clear terminal display
alias which='type -all'                                           # Find executables
alias paths='echo -e ${PATH//:/\\n}'                              # Echo all executable Paths
alias showOptions='shopt'                                         # Display bash options settings
alias cleanupDS="find . -type f -name '*.DS_Store' -ls -delete"   # Recursively delete .DS_Store files
alias fShowHidden='defaults write com.apple.finder ShowAllFiles TRUE'  # Show hidden files in Finder
alias fHideHidden='defaults write com.apple.finder ShowAllFiles FALSE' # Hide hidden files in Finder

# FIXME
# alias fd="find * -depth 0 -type d -ls"                          # find directory from current directory NOK
# alias ff="find * -depth 0 -type f -ls"                          # find file from current directory NOK
# alias fdr="find * -type d -ls"                                  # find directory from current directory recursively NOK
# alias ffr="find * -type f -ls"                                  # find file from current directory recursively NOK
# ff () { /usr/bin/find . -name "$@" ; }                          # Find file under the current directory
# ffs () { /usr/bin/find . -name "$@"'*' ; }                      # Find file whose name starts with a given string
# ffe () { /usr/bin/find . -name '*'"$@" ; }                      # Find file whose name ends with a given string


# ---------
# Functions
# ---------

cd() {                                                            # Always list directory contents upon 'cd'
  builtin cd "$@"; ll;
}

spotlight () {                                                    # Search for a file using MacOS Spotlight's metadata
  mdfind "kMDItemDisplayName == '$@'wc";
}

qzip () {                                                         # To create a ZIP archive of a folder
  zip -r "$1".zip "$1" ;
}

qextract () {                                                     # Extract most know archives with one command
    if [ -f $1 ] ; then
      case $1 in
        *.tar.bz2)   tar xjf $1     ;;
        *.tar.gz)    tar xzf $1     ;;
        *.bz2)       bunzip2 $1     ;;
        *.rar)       unrar e $1     ;;
        *.gz)        gunzip $1      ;;
        *.tar)       tar xf $1      ;;
        *.tbz2)      tar xjf $1     ;;
        *.tgz)       tar xzf $1     ;;
        *.zip)       unzip $1       ;;
        *.Z)         uncompress $1  ;;
        *.7z)        7z x $1        ;;
        *)     echo "'$1' cannot be extracted via qextract()" ;;
         esac
     else
         echo "'$1' is not a valid file"
     fi
}

sman () {                                                         # Better man highlighting passed word
  man $1 | grep -iC2 --color=always $2 | less ;
}
