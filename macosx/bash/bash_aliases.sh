# --------
# Navigate
# --------
alias ~='fn_cd $USER_HOME'                                        # Go Home

alias cd.='cd ../'                                                # Go back 1 directory level
alias cd..='cd ../../'                                            # Go back 2 directory levels
alias cd...='cd ../../../'                                        # Go back 3 directory levels

alias cdropbox='cd $USER_HOME/Dropbox; ll;'                                      # Go & list dropbox folder
alias cicloud='cd $USER_HOME/Library/Mobile\ Documents/com~apple~CloudDocs; ll;' # Go & list icloud folder
alias cscripts='cd $DOTFILES/bash/scripts; ll;'                                  # Go & list scripts folder
alias cbrew='cd /usr/local/Cellar; ll;'                                          # Go & list brew folder
alias ccask='cd /opt/homebrew-cask/Caskroom; ll;'                                # Go & list cask folder


# ----
# List
# ----
alias ll='ls -lhaFp'                                                             # Preferred 'ls' implementation
alias lld="ls -lF | grep '^d'"                                                   # List only directories
alias lr="ls -lhaFpR"                                                            # List recursively
alias lrtree='ls -R | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\''' # List recursively as tree
alias lg='ls -lhaFp | grep'                                                      # List with grep
alias lgr='ls -lhaFpR | grep'                                                    # List with grep recursively

alias lbrew='brew list --versions'                                               # List brew packages
alias lcask='brew cask list --versions'                                          # List cask packages
alias lnpm='npm list -g --depth=0'                                               # List npm packages


# ----
# Misc
# ----
alias c='clear'
alias h='history'
alias cls='clear; pwd; ls'
alias cp='cp -iv'                                                       # Better 'cp' implementation
alias less='less -FSRXc'                                                # Better 'less' implementation
alias mkd='mkdir -pv'                                                   # Better 'mkdir' implementation
alias mv='mv -iv'                                                       # Better 'mv' implementation
alias sprofile='source $USER_HOME/.bash_profile'                        # Source profile
alias grep='grep --color=auto'                                          # Better grep
alias curlh='fn_curl_headers'                                           # Get headers for given url
alias curld='fn_curl_download'                                          # Download from given url
alias qz='fn_quick_zip'                                                 # quick compress
alias qx='fn_quick_extract'                                             # quick uncompress
alias cpkey='pbcopy < ~/.ssh/id_rsa.pub'                                # Copy public ssh key
alias chidden='defaults write com.apple.finder ShowAllFiles TRUE'       # Show hidden files in Finder
alias hhidden='defaults write com.apple.finder ShowAllFiles FALSE'      # Hide hidden files in Finder
alias flushdns='dscacheutil -flushcache'                                # Flush out the DNS Cache
alias cleanls="/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user && killall Finder"                                                      # Clean up LaunchServices to remove duplicates in the "Open With" menu



# ----
# Find
# ----
alias qfind='sudo find . -name '                                  # Quick find file
alias qspot='fn_spotlight'                                        # Spotlight find file
alias qexe='type -all'                                            # Find executables
alias cpath='echo -e ${PATH//:/\\n}'                              # Echo all executable Paths
alias cdir='open -a Finder ./'                                    # Opens current directory in MacOS Finder


# ----------
# Quick edit
# ----------
alias edotfiles='atom $DOTFILES &'                                # Edit dotfiles
alias enotes='atom $USER_HOME/Dropbox/Notes/work &'               # Edit notes
alias edocs='atom $USER_HOME/Documents &'                         # Edit documents


# -------
# Network
# -------
alias sniff="sudo ngrep -d 'en1' -t '^(GET|POST) ' 'tcp and port 80'"     # Sniff traffic
alias lnet='lsof -i'                                                      # Show all open TCP/IP sockets
alias lsock='sudo /usr/sbin/lsof -i -P'                                   # Display open sockets
alias lsocku='sudo /usr/sbin/lsof -nP | grep UDP'                         # Display only open UDP sockets
alias lsockt='sudo /usr/sbin/lsof -nP | grep TCP'                         # Display only open TCP sockets
alias ip0='ipconfig getpacket en0'                                        # Get info on connections for en0
alias ip1='ipconfig getpacket en1'                                        # Get info on connections for en1
alias lports='sudo lsof -i | grep LISTEN'                                 # All listening connections
alias lblocked='sudo ipfw list'                                           # All ipfw rules inc/ blocked IPs


# ------
# System
# ------
alias hinfo='fn_host_info'                                     # Host infos
alias myip='curl ip.appspot.com'                               # Public facing IP Address
alias myps='fn_my_ps'                                          # List processes owned by my user
alias pidof='fn_pid_of'                                        # Find PID with given name
alias psof='fn_ps_of'                                          # Find PID with given name

alias top="top -R -F -s 10 -o rsize"                                      # Recommended 'top' invocation to minimize resources
alias memhogstop='top -l 1 -o rsize | head -20'                           # Find memory hogs
alias memhogsps='ps wwaxm -o pid,stat,vsize,rss,time,command | head -10'  # Find memory hogs
alias cpuhogs='ps wwaxr -o pid,stat,%cpu,time,command | head -10'         # Find cpu hogs
alias eject='fn_eject_force'                                              # Force eject
