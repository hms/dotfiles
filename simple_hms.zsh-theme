# Added by Hal
ruby_prompt_info2() {
	git rev-parse --is-inside-work-tree > /dev/null 2>&1
	if [ $? -eq 0 ]; then
		GIT_DIR="$(git rev-parse --show-toplevel)"
		RUBY_VERSION=${$(ruby_prompt_info)//[\(\)]}

		if [ -f $GIT_DIR/.rails-version ]; then
			RAILS_VERSION_SHORT=`expr "$(cat $GIT_DIR/.rails-version)" : '\([0-9]\.[0-9]\)'`
			echo "[$RUBY_VERSION - Rails@$RAILS_VERSION_SHORT]"
		else
			echo "[$RUBY_VERSION]"
		fi
	fi
echo "➜"
}

PROMPT='%(!.%{$fg[red]%}.%{$fg[green]%})%~%{$fg_bold[blue]%} $(git_prompt_info) %{$fg[red]%}$(ruby_prompt_info2)%{$reset_color%} '
# End of Add

# PROMPT='%(!.%{$fg[red]%}.%{$fg[green]%})%~%{$fg_bold[blue]%} $(git_prompt_info)%{$reset_color%} '

ZSH_THEME_GIT_PROMPT_PREFIX="("
ZSH_THEME_GIT_PROMPT_SUFFIX=")"
ZSH_THEME_GIT_PROMPT_DIRTY=" ✗"
ZSH_THEME_GIT_PROMPT_CLEAN=" ✔"
