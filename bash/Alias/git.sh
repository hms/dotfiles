alias gd='git branch --merged | grep -v "master" | grep -v "*"| xargs -I % sh "{ git branch -d -r origin/%; git branch -d % }"'
