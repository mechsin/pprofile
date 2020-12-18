
# Add some ls aliases
alias ls='ls -F --color=auto'
alias ll='ls -l'
alias la='ls -a'

# grep aliases
alias grep='grep --colour=auto'
alias egrep='grep -E'
alias fgrep='grep -F'

# Some other aliases
alias df='df -h'                          # human-readable sizes
alias df='df -h'                          # human-readable sizes
alias free='free -m'                      # show sizes in MB
alias more=less

# Ask before overwriting with cp mv and rm
alias rm='rm -i'
alias mv='mv -i'
alias cp="cp -i"                          # confirm before overwriting something

# Add a trim trailing alias
alias tt="sed -i 's/[ \t]*$//'"
