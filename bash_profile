export PATH=$PATH:/usr/local/mysql/bin
export PS1='\h:\w$ '
export PORT=3000
export SOLO_DATABASE_PASSWORD=123
export CLICOLORS=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export EDITOR='subl -w'

# Local variables
PATH="/Applications/Postgres.app/Contents/MacOS/bin:$PATH"
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

function gd() {
  git diff
}

function gc(){
  git add -A && git commit -am "$*"
}

function gcp() {
  gc "$*" && git push
}

function server() {
  local port="${1:-4000}"
  python -m SimpleHTTPServer "$port"
}

# Node Completion - Auto-generated, do not touch.
shopt -s progcomp
for f in $(command ls ~/.node-completion); do
  f="$HOME/.node-completion/$f"
  test -f "$f" && . "$f"
done

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

# Rails/Ruby
alias wip="bundle exec cucumber -p wip"
alias b="bundle exec"
alias rb='ruby'

# Misc
alias ll='ls -alFGh'
alias la='ls -A'
alias l='ls -CF'
alias vim='/usr/local/Cellar/vim/7.4.488/bin/vim'
alias vi='vim'
alias ss='source ~/.bash_profile'
alias lp=''

export NVM_DIR="/Users/danielravina/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
