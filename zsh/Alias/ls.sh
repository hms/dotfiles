alias ls='eza --group-directories-first --icons --color-scale'
alias lt='eza --tree --level=2 --icons' # Show in tree view
alias l='ls -a'                         # Short, all files
alias ld='ls -D'                        # Short, only directories
alias ll='ls -lbG --git'                # Long, file size prefixes, grid, git status
alias la='ll -a'                        # Long, all files
alias lC='la --sort=changed'            # Long, sort changed
alias lM='la --sort=modified'           # Long, sort modified
alias lS='la --sort=size'               # Long, sort size
alias lX='la --sort=extension'          # Long, sort extension
