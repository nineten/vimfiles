export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export EDITOR="vim"
export VISUAL="vim"

alias gits="git status" 
alias gitc="git commit -m"
alias gitl="git log"
alias gitd="git diff"
alias gita="git add"
alias agl="ag --pager=\"less -R\""
alias rakevic="rake db:drop && rake db:create && rake db:migrate && rake db:seed"
alias raketestdb="RAILS_ENV=test rake db:drop && RAILS_ENV=test rake db:create && RAILS_ENV=test rake db:migrate && RAILS_ENV=test rake db:seed"
alias csrc="cap staging rails:console"
alias curc="cap uat rails:console"
alias cprc="cap production rails:console"
alias unic="unicorn -c config/unicorn.rb"
alias nyanspec="rspec -f NyanCatFormatter spec"
alias nyanspeci="rspec -f NyanCatFormatter "
alias rnyanspec="APIPIE_RECORD=examples nyanspec"
alias esstart="brew services start elasticsearch"
alias esstop="brew services stop elasticsearch"
#alias urestart="kill -HUP `ps aux | grep 'unicorn master' | grep -v grep | awk '{print $2}'`"

function oxc() {
	find * -maxdepth 0 -name '*.xcworkspace*' -print0 | xargs -0 open
}

function deleteOrigBackup() {
	find . -type f -name '*.orig' -delete
}


