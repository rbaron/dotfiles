#
# This is the old .zshrc file. It will be split between several *.zsh files
#

# Path to your oh-my-zsh configuration.
ZSH=/usr/share/oh-my-zsh/

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt beep
bindkey -v

# The following lines were added by compinstall
zstyle :compinstall filename '/home/rapha/.zshrc'
autoload -Uz compinit
compinit
# End of lines added by compinstall

# Autocomplete . and ..
zstyle ':completion:*' special-dirs true

# ZSH git plugin install
PROMPT='%n@%M:%~$(git_prompt_info) %# '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_no_bold[white]%}:<"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%}✔%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}✘%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg[white]%}>%{$reset_color%}"

# GPG
GPG_TTY=`tty`
#export $GPG_TTY

# Aliases
alias fucking="sudo"
alias ls="ls --color=auto"

alias mount-android="go-mtpfs /mnt/nexus4"
alias umount-android="fusermount -u /mnt/nexus4"

alias initx="startx & \&& vlock"
alias sus="systemctl suspend & \&& slock"
alias naut="echo "'`pwd`'" | xargs nautilus --browser &"


LIBFLASHPATH="/usr/lib/mozilla/plugins/libflashplayer.so"

alias setflashdev="sudo cp "$LIBFLASHPATH"-dev "$LIBFLASHPATH
alias setflashorig="sudo cp "$LIBFLASHPATH"-dev "$LIBFLASHPATH

alias ynab="wine ~/.wine/drive_c/Program\ Files\ \(x86\)/YNAB\ 4/YNAB\ 4.exe"

# Export PATH
export PATH=$PATH:/opt/java/bin:~rapha/.gem/ruby/1.9.1/bin:/usr/local/heroku/bin/:~rapha/.gem/ruby/2.0.0/bin:/opt/i586-elf-4.8.1-Linux-x86_64/bin:/home/rapha/dev/java/play/play-2.0.4:/usr/lib/node_modules/geekie/node_modules/.bin

# Bacward search in the shell history with <C-r>
bindkey ^r  history-incremental-search-backward

# History
#setopt hist_ignore_all_dups
HISTFILE=$HOME/.zshistory       # enable history saving on shell exit
setopt APPEND_HISTORY          # append rather than overwrite history file.
HISTSIZE=2000                  # lines of history to maintain memory
SAVEHIST=1500                  # lines of history to maintain in history file.
setopt HIST_EXPIRE_DUPS_FIRST  # allow dups, but expire old ones when I hit HISTSIZE
setopt EXTENDED_HISTORY        # save timestamp and runtime information

# Python virtualenv
export WORKON_HOME=~/.virtualenvs
VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
source /usr/bin/virtualenvwrapper.sh

# Flex SDK
PATH=~/src/flex_sdk_4.6/bin:$PATH

# Pip packages
PATH=$HOME/.local/bin:$PATH

# Fix GREP_OPTIONS error
alias grep="/usr/bin/grep $GREP_OPTIONS"
unset GREP_OPTIONS

# pyenv stuff
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# rbenv stuff
eval "$(rbenv init -)"

# User gems
export PATH="$HOME/.gem/ruby/2.2.0/bin:$PATH"

# My bins
export PATH="$HOME/.bin:$PATH"

