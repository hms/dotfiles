# this could be done a LOT more cleverly
# Make RVM happy by putting it's path requirements up in the front
if [[ -d $HOME/.rvm && -d $GEM_HOME && -d $MY_RUBY_HOME ]]; then
  PATH=$GEM_HOME/bin:$MY_RUBY_HOME/bin:$HOME/.rvm/bin:$PATH
fi
