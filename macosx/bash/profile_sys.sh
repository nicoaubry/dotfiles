alias memHogsTop='top -l 1 -o rsize | head -20'                           # Find memory hogs
alias memHogsPs='ps wwaxm -o pid,stat,vsize,rss,time,command | head -10'  # Find memory hogs
alias cpuHogs='ps wwaxr -o pid,stat,%cpu,time,command | head -10'         # Find cpu hogs
alias topForever='top -l 9999999 -s 10 -o cpu'                            # Continual 'top' listing (every 10 seconds)
alias top="top -R -F -s 10 -o rsize"                                      # Recommended 'top' invocation to minimize resources
alias myip='curl ip.appspot.com'                                          # Public facing IP Address
alias netCons='lsof -i'                                                   # Show all open TCP/IP sockets
alias flushDNS='dscacheutil -flushcache'                                  # Flush out the DNS Cache
alias lsock='sudo /usr/sbin/lsof -i -P'                                   # Display open sockets
alias lsockU='sudo /usr/sbin/lsof -nP | grep UDP'                         # Display only open UDP sockets
alias lsockT='sudo /usr/sbin/lsof -nP | grep TCP'                         # Display only open TCP sockets
alias ipInfo0='ipconfig getpacket en0'                                    # Get info on connections for en0
alias ipInfo1='ipconfig getpacket en1'                                    # Get info on connections for en1
alias openPorts='sudo lsof -i | grep LISTEN'                              # All listening connections
alias showBlocked='sudo ipfw list'                                        # All ipfw rules inc/ blocked IPs
alias cleanupLS="/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user && killall Finder" # Clean up LaunchServices to remove duplicates in the "Open With" menu

myps() {                                                                  # List processes owned by my user
  ps $@ -u $USER -o pid,%cpu,%mem,start,time,bsdtime,command ;
}

pidof () {                                                                # Find pid
  lsof -t -c "$@" ;
}

ii() {                                                                    # Display useful host related informaton
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
