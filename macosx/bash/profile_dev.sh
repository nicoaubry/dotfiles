export JAVA_HOME=$(/usr/libexec/java_home -v 1.7)
export PLAY_HOME=~/Development/lib/play
export SCALA_HOME=/usr/local/opt/scala/idea
export MAVEN_HOME=/usr/local/opt/maven
export TOMCAT_HOME=~/Development/lib/tomcat
export ACTIVATOR_HOME=~/Development/lib/activator

export PATH="$PATH:/usr/local/bin"
export PATH="/opt/local/bin:$PLAY_HOME:$SCALA_HOME:$SCALA_HOME/bin:$MAVEN_HOME/bin:$TOMCAT_HOME/bin:/usr/local/mysql/bin:$ACTIVATOR_HOME:/usr/local/heroku/bin:$PATH"

# ---------------------
# Set path for gui apps
# ---------------------
launchctl setenv PATH $PATH

# -------
# Aliases
# -------
alias lgit='cd ~/Git'


# --------
# Homebrew
# --------

# Homebrew bash completion
if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi


# ----
# Curl
# ----

# Grabs headers from given url
curlH () { /usr/bin/curl -I -L $@ ; }

# Download a web page and show info on what took time
curlD () { /usr/bin/curl $@ -o /dev/null -w "dns: %{time_namelookup} connect: %{time_connect} pretransfer: %{time_pretransfer} starttransfer: %{time_starttransfer} total: %{time_total}\n" ; }
