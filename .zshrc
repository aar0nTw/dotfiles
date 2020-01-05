# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
PRJ=$HOME/Projects
PH=$PRJ/infuseai
PROJECT_PATHS=($PRJ $PH)
export PYENV_VIRTUALENV_DISABLE_PROMPT=1
export EDITOR='nvim'
export VIDIR=$HOME/.vim
export DOC=$HOME/Documents
export PYTHONPATH=/usr/local/lib/python2.7/site-packages
export PGDATA=/usr/local/var/postgres
export GOPATH=/Users/aaron/.go
export KUBECONFIG=~/.kube/config:~/.kube/kind-config-z2jh
export LDFLAGS="-L/usr/local/opt/zlib/lib -L/usr/local/opt/sqlite/lib"
export CPPFLAGS="-I/usr/local/opt/zlib/include -I/usr/local/opt/sqlite/include"
export PKG_CONFIG_PATH="/usr/local/opt/zlib/lib/pkgconfig /usr/local/opt/sqlite/lib/pkgconfig"
# export TERM=xterm-256color-italic

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="bureau-ruby"

export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

# alias
alias g="git"
alias b="brew"
alias y="yarn"
alias gm="goreman"
alias fm="foreman"
alias zshconfig="vim ~/.zshrc"
alias fy="ydict"
alias py="python"
alias ptt="ssh bbsu@ptt.cc"
alias l="ls -lA1"
alias ld="ll -d"
alias du="du | sort -n | cut -f2- | xargs du -hs"
alias mux=tmuxinator
alias z=zeus
alias vim="nvim"
alias vi=vim
alias v="nvim"
alias sl=ls
alias k=kubectl

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
export UPDATE_ZSH_DAYS=7

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(
  z
  pj
  brew
  git
  pip
  pyenv
  python
  virtualenv
  #copydir
  #copyfile
  urltools
  docker
  history
  tmuxinator
  fancy-ctrl-z
  colored-man-pages
  zsh-autosuggestions
  zsh-syntax-highlighting
  ## Slow plugins ##
  # kubectl
  # command-not-found
)

source $ZSH/oh-my-zsh.sh

# source $HOME/.bin/tmuxinator.zsh

# Customize to your needs...

#fpath=($HOME/.tmuxinator/completion ${fpath})
#alias tmux="TERM=screen-256color-bce tmux"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:/usr/local/sbin:$PATH"

export PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
export PATH=$PATH:$HOME/.go/bin # Add Go to PATH for scripting

#AutoFu
#if [ -f ~/.oh-my-zsh/custom/plugins/auto-fu/auto-fu.plugin.zsh ]; then
        #source ~/.oh-my-zsh/custom/plugins/auto-fu/auto-fu.plugin.zsh ;
    #function zle-line-init () {
        #auto-fu-init
    #}
    #zle -N zle-line-init
#fi

__git_files () { 
  _wanted files expl 'local files' _files
}

function gi() { curl http://www.gitignore.io/api/$@ ;}

function killp {
  kill $(ps -e | awk '{if(NR!=1) { print $4, $1  }}' | pick -do | tail -n +2)
}

# NVM env
#source ~/.nvm/nvm.sh
##### nvm (node version manager) #####
# placeholder nvm shell function
# On first use, it will set nvm up properly which will replace the `nvm`
# shell function with the real one
nvm() {
  if [[ -d "${HOME}/.nvm" ]]; then
    NVM_DIR="${HOME}/.nvm"
    export NVM_DIR
    # shellcheck disable=SC1090
    source "${NVM_DIR}/nvm.sh"
    if [[ -e ~/.nvm/alias/default ]]; then
      PATH="${PATH}:${HOME}.nvm/versions/node/$(cat ~/.nvm/alias/default)/bin"
    fi
    # invoke the real nvm function now
    nvm "$@"
  else
    echo "nvm is not installed" >&2
    return 1
  fi
}

# Docker Machine
# eval "$(docker-machine env default)"

# Auto Jump config https://github.com/wting/autojump
[[ -s /usr/local/etc/profile.d/autojump.sh ]] && . /usr/local/etc/profile.d/autojump.sh

# color for less and man 
export MANPAGER='less -s -M +Gg'
export LESS="--RAW-CONTROL-CHARS"
lesscolors=$HOME/bin/.LESS_TERMCAP
[[ -f $lesscolors ]] && . $lesscolors

# QT
# export PATH="/usr/local/opt/qt/bin:$PATH"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/aaron/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/aaron/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/aaron/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/aaron/google-cloud-sdk/completion.zsh.inc'; fi

autoload -Uz compinit
if [ $(date +'%j') != $(/usr/bin/stat -f '%Sm' -t '%j' ${ZDOTDIR:-$HOME}/.zcompdump) ]; then
  compinit
else
  compinit -C
fi

