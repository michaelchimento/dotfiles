#trad bash stuff
alias la='ls -a'

#apt-get related
alias agupug='sudo apt-get update && sudo apt-get upgrade'
alias agi='function _sagi(){ sudo apt-get install $1; };_sagi'

#git related
alias gstat='git status'
alias gadd='git add -u'
alias gcom='function _gcom(){ git commit -m $1; };_gcom'
alias gsud='git status && git add -u && git commit -m "update" && git push origin master'
