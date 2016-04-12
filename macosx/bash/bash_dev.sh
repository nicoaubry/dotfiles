export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
export SCALA_HOME="/usr/local/opt/scala"
export MAVEN_HOME="/usr/local/opt/maven"
export M2_REPO="$USER_HOME/.m2"
export TOMCAT_HOME="/usr/local/opt/tomcat/libexec"

export PATH="$PATH:$JAVA_HOME:$MAVEN_HOME:$SCALA_HOME:$TOMCAT_HOME"

# Aliases
alias ldev='cd $DEV_HOME; ll;'
alias lgit='cd $GIT_HOME; ll;'
alias lgithub='cd $GIT_HOME/nicoaubry; ll;'
alias lhg='cd $DEV_HOME/hg; ll;'
alias lm2='cd $M2_REPO/repository; ll | more;'

# Atom instance from $DEV_HOME
alias edev='atom $DEV_HOME &'

# Local CouchDB
alias couchdb-ui='ssh-couchdb-dev; fauxton -c "http://localhost:5985"'

# Local Redis
alias redis-server='redis-server /usr/local/etc/redis.conf'

# Local Kafka
#export KAFKA_HOME=/usr/local/opt/kafka/libexec
#export PATH="$PATH:$KAFKA_HOME:$KAFKA_HOME/bin"
#
# fn_kf_produce() {
#   $KAFKA_HOME/bin/kafka-console-producer.sh --broker-list localhost:9092 --topic "$@"
# }
#
# fn_kf_consume() {
#   $KAFKA_HOME/bin/kafka-console-consumer.sh --zookeeper localhost:2181 --from-beginning --topic "$@"
# }
#
# alias zk-start="$KAFKA_HOME/bin/zookeeper-server-start.sh /usr/local/etc/kafka/zookeeper.properties"
# alias kf-start="$KAFKA_HOME/bin/kafka-server-start.sh /usr/local/etc/kafka/server.properties"
#
# alias zk-stop="$KAFKA_HOME/bin/zookeeper-server-stop.sh"
# alias kf-stop="$KAFKA_HOME/bin/kafka-server-stop.sh"
#
# alias kf-manager="cd ~/Devs/git/other/kafka-manager; sbt clean compile run"
#
# alias kf-produce='fn_kf_produce'
# alias kf-consume='fn_kf_consume'
