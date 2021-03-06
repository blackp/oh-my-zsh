# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git redis-cli sublime)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

export GEM_HOME=$HOME/src/ruby
export PATH=$PATH:$HOME/src/ruby/bin

export EDITOR="subl -w"
alias gx="open -a GitX ."
alias x="open -a Xcode ."
alias xb="open -a Xcode-beta ."
alias gcam="git commit -am"
alias gs="git status"
alias st=subl

function cache_defaults {
	KEY=${1:-all}
	CACHE_PATH="/tmp/$KEY.defaults_cache.plist"
	echo saving $KEY defaults to $CACHE_PATH
	defaults read $1 > $CACHE_PATH
}

function compare_defaults {
	KEY=${1:-all}
	CACHE_PATH="/tmp/$KEY.defaults_cache.plist"
	echo diff $KEY defaults with $CACHE_PATH
	defaults read $1 | diff - $CACHE_PATH
}
