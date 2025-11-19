#
# This is the old .zshrc file. It will be split between several *.zsh files
#

# Path to your oh-my-zsh configuration.
ZSH=$HOME/src/ohmyzsh/

# Disable auto uptate question
DISABLE_AUTO_UPDATE="true"

# Cache for autocomplete
ZSH_CACHE_DIR=$HOME/.oh-my-zsh-cache
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir $ZSH_CACHE_DIR
fi

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(
    git
    fzf
)

source $ZSH/oh-my-zsh.sh

# Lines configured by zsh-newuser-install
unsetopt beep
bindkey -v

# The following lines were added by compinstall
# zstyle :compinstall filename '/home/rapha/.zshrc'
#autoload -Uz compinit
#compinit
# End of lines added by compinstall

# Autocomplete . and ..
zstyle ':completion:*' special-dirs true

# Use https://github.com/sindresorhus/pure.
fpath+=($HOME/dotfiles/zsh/pure)

# Byobu-like
#PS1=$'\e[38;5;245m%n\e[00m@\e[38;5;172m%M:\e[38;5;245m%~\e[00m$(git_prompt_info)\e[00m\n%# '
#ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_no_bold[white]%}:<"
#ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%}✔%{$reset_color%}"
#ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}✘%{$reset_color%}"
#ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg[white]%}>%{$reset_color%}"

# Backward search in the shell history with <C-r>
#bindkey ^r  history-incremental-search-backward

# History
#setopt hist_ignore_all_dups
HISTFILE=$HOME/.zshistory       # enable history saving on shell exit
setopt APPEND_HISTORY          # append rather than overwrite history file.
HISTSIZE=20000                 # lines of history to maintain memory
SAVEHIST=20000                 # lines of history to maintain in history file.
setopt HIST_EXPIRE_DUPS_FIRST  # allow dups, but expire old ones when I hit HISTSIZE
setopt EXTENDED_HISTORY        # save timestamp and runtime information

# Fix GREP_OPTIONS error
unset GREP_OPTIONS

# My bins
export PATH="$HOME/.bin:$PATH:$HOME/dotfiles/bin"

# Locale
export LC_ALL=en_US.UTF-8
