echo "hello"


tabname() {
    echo $1 
    #echo -e '\033k'$1'\033\\'
    #echo -e '\033]2;'$1'\007'
    echo -n -e "\033]0;$1\007"
}

java_compile() {
   FIRST_ARG=`sed 's/.....$//'<<<"${1}"`; echo ${FIRST_ARG} ; shift; echo ${@}
   javac ${FIRST_ARG}.java; java ${FIRST_ARG} ${@}; rm ${FIRST_ARG}.class
}

java_compile_debug() {
   FIRST_ARG=`sed 's/.....$//'<<<"${1}"`; echo ${FIRST_ARG}; shift; echo ${@}
   javac ${FIRST_ARG}.java; java -agentlib:jdwp=transport=dt_socket,server=y,suspend=y,address=8000 ${FIRST_ARG} ${@}; rm ${FIRST_ARG}.class
}

alias jc="java_compile $1"
alias jcd="java_compile_debug $1"
alias ssha="ssh -A"
alias ll="ls -alrt"
alias wk="cd /Users/dhawangayash/workspace/"
alias psef="ps -ef | grep "
alias trl="tree -L"
alias paper="cd /Users/dhawangayash/papers/"
alias tabname="tabname $1"


export SCALA_HOME=~/Applications/scala-2.12.2/

export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_121.jdk/Contents/Home/"
export BISON="/usr/local/Cellar/bison/3.0.4"
export M2_HOME="/Users/dhawangayash/Downloads/apache-maven-3.5.0"
export ARCANIST="/Users/dhawangayash/Applications/phacility/arcanist"
export PATH="$SCALA_HOME/bin:$ARCANIST/bin:$BISON/bin:$M2_HOME/bin:$JAVA_HOME/bin:$PATH"
export SECOR_INSTALL_DIR=~/secor/final

export WORKON_HOME=~/Envs


source ~/.dgg
source ~/.keys
source /usr/local/bin/virtualenvwrapper.sh
