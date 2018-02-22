# Aliases
alias ls='ls -Gh'
alias grep='grep --color=auto'
alias vlc='/Applications/VLC.app/Contents/MacOS/VLC'

# git aware
export GITAWAREPROMPT=~/.bash/git-aware-prompt
source "${GITAWAREPROMPT}/main.sh"

# Prompt
# export PS1="\[$txtblu\]\$git_branch\$git_dirty\[$txtrst\] \j \# \[\e[0;32m\]\t \[\e[0;33m\]${PWD#"${PWD%/*/*}/"}\[\e[0;32m\] \$ \[\e[0m\]"
export PS1="\[\e[0;36m\]\u\[\e[0m\] @ \[\e[0;36m\]\h\[\e[0m\] \[$txtblu\]\$git_branch\$git_dirty\[$txtrst\] \j \# \[\e[0;32m\]\t \[\e[0;33m\]\W\[\e[0;32m\] \$ \[\e[0m\]"
export PS2="&gt; "

export NVM_DIR="/Users/marc/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# bash-completion (brew install bash-completion; brew tap homebrew/completions)
if [ -f $(brew --prefix)/etc/bash_completion ]; then
	. $(brew --prefix)/etc/bash_completion
fi

# path
PATH=~/.rbenv/shims:$PATH:~/.bin

nvm use 8.9.4

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
