export PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH"
export PS1='\h:\w$ '
export PORT=3000
export SOLO_DATABASE_PASSWORD=123
export CLICOLORS=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export EDITOR='subl -w'
export RAILS_NO_DEBUG_ASSETS=1

# Local variables
PATH="/Applications/Postgres.app/Contents/Versions/9.4/bin:$PATH"
RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
WHITE="\[\033[0;00m\]"
PS1="$RED\$(date +%H:%M) \w$YELLOW \$(parse_git_branch) $WHITE\$ "

# Functions
function parse_git_branch {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo "("${ref#refs/heads/}")"
}

function r() {
  rails $*
}

function gc(){
  if [ "$*" == "" ]; then
    echo "[ERROR] Add commit message"
  else
    git add -A && git commit -am "$*"
  fi
}

function gcp() {
  gc "$*" && git push
}

function server() {
  local port="${1:-4000}"
  python -m SimpleHTTPServer "$port"
}

function title {
  echo -ne "\033]0;"$*"\007"
}

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
export PATH=$PATH:/Users/danielravina/Android/sdk/tools
export PATH=$PATH:/Users/danielravina/Android/sdk/platform_tools


## Aliases ##

# Enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
  test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
  alias ls='ls --color=auto'
  alias grep='grep --color=auto'
  alias fgrep='fgrep --color=auto'
  alias egrep='egrep --color=auto'
fi

# Git
alias gs="git status"
alias gl='git log --oneline --color'
alias gd='git diff'
alias gco='git checkout'
alias gh='git history'
alias gb='git branch'

# Rails/Ruby
alias wip="bundle exec cucumber -p wip"
alias b="bundle exec"
alias rb='ruby'
alias setup='bundle && b rake db:migrate'
alias rake='b rake'
alias rspec='spring rspec'

# Branch Completion script
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

eval "$(rbenv init -)"

# Misc
alias ll='ls -alFGh'
alias la='ls -A'
alias l='ls -CF'
alias vi='vim'
alias ss='source ~/.bash_profile'
alias lp=''
alias sub='sublime'
alias subl='sub'
alias profile='sub ~/.bash_profile'

export BOXEN_SOCKET_DIR=/usr/local/var/project-sockets

export SEMAPHORE=1

export NVM_DIR="/Users/daniel_ravina/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
source ~/.nvm/nvm.sh
