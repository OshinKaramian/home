export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOPATH/bin

export CLICOLOR=1
export LSCOLORS=DxGxcxdxCxegedabagacad

export GREP_OPTIONS='--color=auto'

export ETC=/etc
export EDITOR="vim"

lias gitmaster="git checkout master && git pull"
alias npmpatch="gitmaster && npm version patch && git push --tags origin master"
alias npmminor="gitmaster && npm version minor && git push --tags origin master"
alias npmmajor="gitmaster && npm version major && git push --tags origin master"

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1='\[\e[0;31m\]\u\[\e[m\] \[\e[0;36m\]\w\[\e[m\]$(parse_git_branch) \[\e[0;31m\]\$ \[\e[m\]\[\e[0;32m\]'
