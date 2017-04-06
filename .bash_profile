
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

#Fixes sublime text 3 so that command subl works

export PATH=/bin:/sbin:/usr/bin:/usr/local/sbin:/usr/local/bin:$PATH
export EDITOR='subl -w'

#change prompt
export PS1="________________________________________________________________________________\n| \w @ \h (\u) \n| => "
export PS2="| => "
export BLOCKSIZE=1k

#Set default blocksize for ls, df, du
alias ll='ls -FGlAhp'
cd() { builtin cd "$@"; ll;}

alias qfind="find . -name "            #qfind: Quickly search for file
ff () { /usr/bin/find . -name "$@" ; } #find file under the current directory
ffs () { /usr/bin/find . -name "$@"'*' ; } #ffs find file whose name starts with a given string
ffe () { /usr/bin/find . -name '*'"$@" ; } #ffe find file whose name ends with given string

alias myip='curl ip.appspot.com'

#   ii:  display useful host related informaton
#   -------------------------------------------------------------------
    ii() {
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

export PATH="$GEM_HOME/bin:$PATH"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

#Quick fix to getting rvm to start ruby on the correct version I want it to
rvm default
