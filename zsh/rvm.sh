# Load RVM, if it is present.
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

if type brew &>/dev/null; then
	FPATH=$(brew --prefix)/share/site-functions:$FPATH
fi
