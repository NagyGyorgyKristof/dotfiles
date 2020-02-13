# You can put files here to add functionality separated per file, which
# will be ignored by git.
# Files on the custom/ directory will be automatically loaded by the init
# script, in alphabetical order.

# For example: add yourself some shortcuts to projects you often work on.
#
# brainstormr=~/Projects/development/planetargon/brainstormr
# cd $brainstormr
#


#encrypt
encrypt(){
	openssl des -in $1 -out "$1.enc"
}

# Start League Of Legends properly
lol () {
    cd '/Applications/League of Legends.app/Contents/LoL/'
    ./LeagueClient.app/Contents/MacOS/LeagueClient
}

#open a file with EDITOR
open(){
	$EDITOR $1
}

# java
alias j8="export JAVA_HOME=$(/usr/libexec/java_home -v 1.8.0_231)"
alias j11="export JAVA_HOME=$(/usr/libexec/java_home -v 11)"
#open zhsrc
alias zshrc="open $ZDOTDIR/.zshrc"