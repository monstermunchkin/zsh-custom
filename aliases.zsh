alias vi='vim'
alias sudo='sudo -Es '
alias pip_upgrade_all='pip3 freeze | cut -d= -f1 | parallel sudo pip3 install --upgrade'
alias pip2_upgrade_all='pip2 freeze | cut -d= -f1 | parallel sudo pip2 install --upgrade'
alias sshx='TERM=xterm ssh'

alias -s pdf='evince'
alias -s png='mirage'
alias -s jpg='mirage'
