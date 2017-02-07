# Aliases
alias ls='ls -Gh'
alias grep='grep --color=auto'
alias vlc='/Applications/VLC.app/Contents/MacOS/VLC'

# Prompt
export PS1="\j \# \[\e[0;32m\]\t \[\e[0;33m\]\w\[\e[0;32m\] \\$ \[\e[0m\]"
export PS2="&gt; "

export NVM_DIR="/Users/marclacoursiere/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
