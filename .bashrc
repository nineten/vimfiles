export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export EDITOR="vim"
export VISUAL="vim"

alias gits="git status"
alias gitck="git checkout"
alias gitc="git commit -m"
alias gitl="git log"
alias gitlg="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"
alias gitlh="git log --date-order --all --graph --format='%C(green)%h %Creset%C(yellow)%an%Creset %C(blue bold)%ar%Creset %C(red bold)%d%Creset %s'"
alias gitd="git diff"
alias gitcp="git cherry-pick"
alias gitsi="git stash --keep-index"
alias gitsoa="git stash --keep-index; git stash save 'temp stash'"
alias gitrsl='git reset spec/rails_helper.rb spec/spec_helper.rb Gemfile Gemfile.lock'
alias gita='git add .'
alias wip="git commit -a -m WIP"
alias unwip="git reset HEAD~"
alias agl="ag --pager=\"less -R\""
alias rakevic="rake db:drop && rake db:create && rake db:migrate && rake db:seed"
alias raketestdb="RAILS_ENV=test rake db:drop && RAILS_ENV=test rake db:create && RAILS_ENV=test rake db:migrate && RAILS_ENV=test rake db:seed"
alias csrc="cap staging rails:console"
alias curc="cap uat rails:console"
alias cprc="cap production rails:console"
alias unic="unicorn -c config/unicorn.rb"
alias be="bundle exec"
alias nyanspec="rspec -f NyanCatFormatter"
alias benyanspec="be rspec -f NyanCatFormatter"
alias rnyanspec="APIPIE_RECORD=examples nyanspec"
alias esstart="brew services start elasticsearch"
alias esstop="brew services stop elasticsearch"
alias rsn="rails s -p 3000 -b lvh.me"
alias sshadd="ssh-add -K"
alias ssh222="ssh -p 222"
alias chtsh="~/Applications/cht.sh"
alias rc="rubocop -c ~/.rubocop.yml"
alias cov="open coverage/index.html"
alias gpg2dec="gpg2 -d --batch --passphrase-file"
alias gpg2enc="gpg2 -c --cipher-algo twofish --batch --passphrase-file"
alias rmswp="rm -i `find . | grep .swp$`"
alias rmswo="rm -i `find . | grep .swo$`"
alias rmswn="rm -i `find . | grep .swn$`"
alias ctags="`brew --prefix`/bin/ctags"
#alias urestart="kill -HUP `ps aux | grep 'unicorn master' | grep -v grep | awk '{print $2}'`"

oxc() {
	find * -maxdepth 0 -name '*.xcworkspace*' -print0 | xargs -0 open
}

deleteOrigBackup() {
	find . -type f -name '*.orig' -delete
}

trackUnpushed() {
  echo "$@" >> ~/unpushed_branch.txt
}
