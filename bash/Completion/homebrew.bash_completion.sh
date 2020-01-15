which rvm-prompt > /dev/null 2>&1
if [[ $? == 0 ]]; then
	if [ -f `brew --prefix`/etc/bash_completion ]; then
  		. `brew --prefix`/etc/bash_completion
	fi
fi
# source `brew --prefix`/Library/Contributions/brew_bash_completion.sh
