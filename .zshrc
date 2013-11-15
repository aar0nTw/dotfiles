# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
PRJ=$HOME/Projects
WS=$HOME/Projects/Faria
EDITOR='vim'
VIDIR=$HOME/.vim
DOC=$HOME/Documents
PYTHONPATH=/usr/local/lib/python2.7/site-packages
GOPATH=/Users/aaron/.go

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="wedisagree"
#ZSH_THEME="juanghurtado"
ZSH_THEME="eastwood"

LANG="en_US.UTF-8"
LC_ALL="en_US.UTF-8"

# alias
alias zshconfig="vim ~/.zshrc"
alias fy="ydict"
alias py="python"
alias ptt="ssh bbsu@ptt.cc"
alias l="ls -lA1"
alias ld="ll -d"
alias du="du | sort -n | cut -f2- | xargs du -hs"
alias mux=tmuxinator

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
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git rails4 ruby zsh-syntax-highlighting rake npm gem brew rvm bundler tmux mux zeus github heroku)

source $ZSH/oh-my-zsh.sh

#source $HOME/.bin/tmuxinator.zsh

# Customize to your needs...
# NVM
. ~/.nvm/nvm.sh

# PATH
#export PATH=$PATH:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/aaron/.rvm/bin
export PATH=$PATH:/Applications/Julia-0.2.0-pre-acc85a8eb0.app/Contents/Resources/julia/bin

[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator ]]

#fpath=($HOME/.tmuxinator/completion ${fpath})
#autoload -U compinit
#compinit
alias tmux="TERM=screen-256color-bce tmux"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
