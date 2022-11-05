alias lsof-tcp='lsof -iTCP'
alias lsof-tcp-listen='lsof -iTCP -sTCP:LISTEN -P'
alias lsof-kill-rails="lsof -wni tcp:3000 | egrep '^ruby' | awk '{print \$2}' | xargs kill"
alias lsof-kill9-rails="lsof -wni tcp:3000 | egrep '^ruby' | awk '{print \$2}' | xargs kill -9"
