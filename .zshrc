zmodload zsh/zprof

source "${HOME}/.zgen/zgen.zsh"

# if the init scipt doesn't exist
if ! zgen saved; then
    echo "Creating a zgen save"

    zgen oh-my-zsh

    # plugins
    zgen oh-my-zsh plugins/command-not-found
    zgen oh-my-zsh plugins/git
    zgen oh-my-zsh plugins/history-substring-search
    zgen oh-my-zsh plugins/osx
    zgen oh-my-zsh plugins/sudo

    # syntax highlighting
    zgen load zsh-users/zsh-syntax-highlighting

    # completions
    zgen load zsh-users/zsh-completions src

    # theme
    zgen load sindresorhus/pure

    # save all to init script
    zgen save
fi

source ~/.aliases
source ~/.path

# zsh-history-substring-search configuration
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
HISTORY_SUBSTRING_SEARCH_ENSURE_UNIQUE=1
