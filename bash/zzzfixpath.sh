# this could be done a LOT more cleverly
if [[ -d $HOME/.rvm && -d $GEM_HOME && -d $MY_RUBY_HOME ]]; then
  PATH=$GEM_HOME/bin:$MY_RUBY_HOME/bin:$HOME/.rvm/bin:$PATH
fi
