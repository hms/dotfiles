#!/bin/bash
# vim:fdm=marker :

# mysql stuff
alias mystart='mysql.server start'
alias mystop='mysql.server stop'
# end mysql stuff

# postgres stuff
alias pstart='nohup pg_ctl start -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log &'
alias pstop='pg_ctl stop -D /usr/local/var/postgres -m fast'
export PGOPTIONS='-c client_min_messages=WARNING' # make the PG client a LOT less chatty 
# end postgres stuff

# memcache stuff
alias memstart='nohup /usr/local/opt/memcached/bin/memcached &'
alias memstop='pkill memcached'

# explore if this is better
#alias memcached-start="launchctl load ~/Library/LaunchAgents/homebrew.mxcl.memcached.plist"
#alias memcached-stop="launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.memcached.plist"
#alias memcached-restart="launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.memcached.plist;launchctl load ~/Library/LaunchAgents/homebrew.mxcl.memcached.plist"
# end memcache stuff

# redis stuff
alias rstart='nohup redis-server /usr/local/etc/redis.conf &'
alias rstop='pkill redis-server'
# end redis stuff

# rabbit mq stuff
alias rabstart='nohup rabbitmq-server &'
alias rabstop='pkill rabbitmq-server'
# end rabbit mq
