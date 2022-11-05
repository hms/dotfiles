alias gd-local='git branch --merged | grep -v "master" | grep -v "main" | grep -v "*"| xargs  git branch -d '
alias gd-remote='git branch --merged | grep -v "master" | grep -v "main" | grep -v "*"| xargs -I % git branch -d -r origin/%'

alias gd='gd-remote; gd-local'
