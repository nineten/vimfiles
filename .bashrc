export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

alias gits="git status" 
alias gitc="git commit -m"
alias gitl="git log"
alias gitd="git diff"
alias gita="git add"
alias agl="ag --pager=\"less -R\""
alias rakevic="rake db:drop && rake db:create && rake db:migrate && rake db:seed"
alias csrc="cap staging rails:console"
alias curc="cap uat rails:console"
alias cprc="cap production rails:console"

function oxc() {
  find * -maxdepth 0 -name '*.xcworkspace*' -print0 | xargs -0 open
}

function deleteOrigBackup() {
  find . -type f -name '*.orig' -delete
}

