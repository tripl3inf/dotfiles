# Aliases in this file are bash and zsh compatible

export STORMPATH_CLIENT_APIKEY_ID=4HRO8MLNPRLR3SXGRTUP6Z4ZJ
export STORMPATH_CLIENT_APIKEY_SECRET=vYzYTrcWbNgd5lIwN7oWZkKumLQ799keGuoHz4hZcjM
export STORMPATH_APPLICATION_HREF=https://api.stormpath.com/v1/applications/1kPVk2OwS30prjqQfrqm1q

# Don't change. The following determines where YADR is installed.
yadr=$HOME/.yadr

# Node Version Manager
export NVM_DIR=~/.nvm
  . $(brew --prefix nvm)/nvm.sh

# Move Vagrant Cache
export VAGRANT_HOME=/Volumes/EVO-250/Vagrants/.vagrant.d

# Get operating system
platform='unknown'
unamestr=$(uname)
if [[ $unamestr == 'Linux' ]]; then
  platform='linux'
elif [[ $unamestr == 'Darwin' ]]; then
  platform='darwin'
fi

# Ansible
alias ans="ansible-playbook"

# ls+
alias lss='ls++'

# format/colorize curl JSON
function jcurl() {
  curl "$1" | json | pygmentize -l json
}


  # TMUX
  #if which tmux >/dev/null 2>&1; then
  #  ###if not inside a tmux session, and if no session is started, start a new session
  #  test -z "$TMUX" && (tmux attach || tmux )
  #fi

  # Beyond Compare
  #alias bcompare='/Applications/Beyond\ Compare.app/Contents/MacOS/BCompare'

  # osx disk util
  alias dul='diskutil list'
  alias duu='diskutil unmountDisk'

  # dd command
  # TODO: make plugin function
  #dd if=/dev/zero of=/dev/sdX bs=32M


  # YADR support
  alias yav='yadr vim-add-plugin'
  alias ydv='yadr vim-delete-plugin'
  alias ylv='yadr vim-list-plugin'
  alias yup='yadr update-plugins'
  alias yip='yadr init-plugins'

  # PS
  alias psa="ps aux"
  alias psg="ps aux | grep "
  alias psr='ps aux | grep ruby'

  # Moving around
  alias cdb='cd -'
  alias cls='clear;ls'

  # Show human friendly numbers and colors
  alias df='df -h'
  alias ll='ls -alGh'
  alias ls='ls -Gh'
  alias lss='ls++'
  alias du='du -h -d 2'

  if [[ $platform == 'linux' ]]; then
    alias ll='ls -alh --color=auto'
    alias ls='ls --color=auto'
  elif [[ $platform == 'darwin' ]]; then
    alias ll='ls -alGh'
    alias ls='ls -Gh'
  fi

  # show me files matching "ls grep"
  alias lsg='ll | grep'

  # Alias Editing
  TRAPHUP() {
    source $yadr/zsh/aliases.zsh
  }

  alias ae='vim $yadr/zsh/aliases.zsh' #alias edit
  alias ar='source $yadr/zsh/aliases.zsh'  #alias reload
  alias gar="killall -HUP -u \"$USER\" zsh"  #global alias reload

  # vim using
  mvim --version > /dev/null 2>&1
  MACVIM_INSTALLED=$?
  if [ $MACVIM_INSTALLED -eq 0 ]; then
    alias vim="mvim -v"
  fi

  # mimic vim functions
  alias :q='exit'

  # vimrc editing
  alias ve='vim ~/.vimrc'

  # zsh profile editing
  alias ze='vim ~/.zshrc'
  alias zr='source ~/.zshrc'

  # Git Aliases
  alias gs='git status'
  alias gstsh='git stash'
  alias gst='git stash'
  alias gsp='git stash pop'
  alias gsa='git stash apply'
  alias gsh='git show'
  alias gshw='git show'
  alias gshow='git show'
  alias gi='vim .gitignore'
  alias gcm='git ci -m'
  alias gcim='git ci -m'
  alias gci='git ci'
  alias gco='git co'
  alias gcp='git cp'
  alias ga='git add -A'
  alias gap='git add -p'
  alias guns='git unstage'
  alias gunc='git uncommit'
  alias gm='git merge'
  alias gms='git merge --squash'
  alias gam='git amend --reset-author'
  alias grv='git remote -v'
  alias grr='git remote rm'
  alias grad='git remote add'
  alias gr='git rebase'
  alias gra='git rebase --abort'
  alias ggrc='git rebase --continue'
  alias gbi='git rebase --interactive'
  alias gl='git l'
  alias glg='git l'
  alias glog='git l'
  alias co='git co'
  alias gf='git fetch'
  alias gfch='git fetch'
  alias gd='git diff'
  alias gb='git b'
  alias gbd='git b -D -w'
  # Staged and cached are the same thing
  alias gdc='git diff --cached -w'
  alias gds='git diff --staged -w'
  alias gpub='grb publish'
  alias gtr='grb track'
  alias gpl='git pull'
  alias gplr='git pull --rebase'
  alias gps='git push'
  alias gpsh='git push -u origin `git rev-parse --abbrev-ref HEAD`'
  alias gnb='git nb' # new branch aka checkout -b
  alias grs='git reset'

  alias grm='git rm'

  alias grh='git reset HEAD'
  alias grhh='git reset HEAD --hard'
  alias grsh='git reset --hard'
  alias gcln='git clean'
  alias gclndf='git clean -df'
  alias gclndfx='git clean -dfx'
  alias gsm='git submodule'
  alias gsmi='git submodule init'
  alias gsmu='git submodule update'
  alias gt='git t'
  alias gbg='git bisect good'
  alias gbb='git bisect bad'

  # Common shell functions
  alias less='less -r'
  alias tf='tail -f'
  alias l='less'
  alias lh='ls -alt | head' # see the last modified files
  alias screen='TERM=screen screen'
  alias cl='clear'

  # Zippin
  alias gz='tar -zcvf'

  # Ruby
  alias c='rails c' # Rails 3
  alias co='script/console' # Rails 2
  alias cod='script/console --debugger'

  #If you want your thin to listen on a port for local VM development
  #export VM_IP=10.0.0.1 <-- your vm ip
  alias ts='thin start -a ${VM_IP:-127.0.0.1}'
  alias ms='mongrel_rails start'
  alias tfdl='tail -f log/development.log'
  alias tftl='tail -f log/test.log'

  alias ka9='killall -9'
  alias k9='kill -9'

  # Gem install
  alias sgi='sudo gem install --no-ri --no-rdoc'

  # TODOS
  # This uses NValt (NotationalVelocity alt fork) - http://brettterpstra.com/project/nvalt/
  # to find the note called 'todo'
  alias todo='open nvalt://find/todo'

  # Forward port 80 to 3000
  alias portforward='sudo ipfw add 1000 forward 127.0.0.1,3000 ip from any to any 80 in'

  alias rdm='rake db:migrate'
  alias rdmr='rake db:migrate:redo'

  # Zeus
  alias zs='zeus server'
  alias zc='zeus console'

  # Rspec
  alias rs='rspec spec'
  alias sr='spring rspec'
  alias src='spring rails c'
  alias srgm='spring rails g migration'
  alias srdm='spring rake db:migrate'
  alias srdt='spring rake db:migrate'
  alias srdmt='spring rake db:migrate db:test:prepare'

  # Sprintly - https://github.com/nextbigsoundinc/Sprintly-GitHub
  alias sp='sprintly'
  # spb = sprintly branch - create a branch automatically based on the bug you're working on
  alias spb="git checkout -b \`sp | tail -2 | grep '#' | sed 's/^ //' | sed 's/[^A-Za-z0-9 ]//g' | sed 's/ /-/g' | cut -d"-" -f1,2,3,4,5\`"

  alias hpr='hub pull-request'
  alias grb='git recent-branches'

  # Finder
  alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
  alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

  alias dbtp='spring rake db:test:prepare'
  alias dbm='spring rake db:migrate'
  alias dbmr='spring rake db:migrate:redo'
  alias dbmd='spring rake db:migrate:down'
  alias dbmu='spring rake db:migrate:up'

  # Homebrew
  alias brewu='brew update  && brew upgrade --all && brew cleanup && brew prune && brew doctor'

  alias zre='source ~/.zshrc'
  alias vi='vim'
  alias hm='cd ~/'
  alias cdd="cd ../"

  ### Git
  alias gvdif="git diff git-svn HEAD --name-only"

  # logging
  # search for first commit by eric
  function b-creation() {
  git log --date=local "$@" --author=eric
}

# unmerged between branches
function umerged() {
git log -v --author=alex "$@"
}

# Bundler

function cap() {
bundle exec cap "$@"
}

# update 'locate' command database
alias updatedb='sudo /usr/libexec/locate.updatedb'

# SSH
alias sshc="vim ~/.ssh/config"


# Vagrant
alias vau="vagrant up"
alias vas="vagrant suspend"
alias var="vagrant reload"
alias vad="vagrant destroy"
alias vah="vagrant halt"
alias vsh="vagrant ssh"
alias vap="vagrant pristine"

