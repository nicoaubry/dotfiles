# Always list directory contents upon 'cd'
fn_cd() {
  builtin cd "$@"; ll;
}

# Search for a file using MacOS Spotlight's metadata
fn_spotlight() {
  mdfind "kMDItemDisplayName == '$@'wc";
}

# To create a ZIP archive of a folder
fn_quick_zip() {
  zip -r "$1".zip "$1";
}

# Extract most known archives with one command
fn_quick_extract() {
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
        *)     echo "'$1' cannot be extracted via fn_quick_extract()" ;;
         esac
     else
         echo "'$1' is not a valid file"
     fi
}

# List processes owned by my user
fn_my_ps() {
  ps $@ -u $USER -o pid,%cpu,%mem,start,time,bsdtime,command ;
}

# Find PID of an app
fn_pid_of() {
  lsof -t -c "$@" ;
}

fn_ps_of() {
   ps -ef | grep "$@" ;
}

# Display useful host related informaton
fn_host_info() {
    echo -e "\nYou are logged on ${RED}$HOST"
    echo -e "\nAdditionnal information:$NC " ; uname -a
    echo -e "\n${RED}Users logged on:$NC " ; w -h
    echo -e "\n${RED}Current date :$NC " ; date
    echo -e "\n${RED}Machine stats :$NC " ; uptime
    echo -e "\n${RED}Current network location :$NC " ; scselect
    echo -e "\n${RED}Public facing IP Address :$NC " ;myip
    #echo -e "\n${RED}DNS Configuration:$NC " ; scutil --dns
    echo
}

# Grabs headers from given url
fn_curl_headers() { /usr/bin/curl -I -L $@ ; }

# Download a web page and show info on what took time
fn_curl_download() { /usr/bin/curl $@ -o /dev/null -w "dns: %{time_namelookup} connect: %{time_connect} pretransfer: %{time_pretransfer} starttransfer: %{time_starttransfer} total: %{time_total}\n" ; }

# Force eject media
fn_eject_force() {
   hdiutil eject -force $@
}
