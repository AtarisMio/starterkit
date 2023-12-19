## file path: ~/.zshrc
# init oh-my-zsh
export ZSH="$HOME/.oh-my-zsh"

# saving history
setopt APPEND_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_REDUCE_BLANKS
export HISTFILE="$HOME/.zsh_history"
# history size
export HISTSIZE=10000
export SAVEHIST=10000

# node/nvm mirror [removed]

# Android sdk & tools
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=/bin:/usr/local/bin:${ANDROID_HOME}/tools:${ANDROID_HOME}/platform-tools:$PATH

# zsh theme
ZSH_THEME="agnoster"
# zsh plugins
plugins=(
  git
  git-auto-fetch
  node
  npm
  kubectl # optional
  docker # optional
  zsh-autosuggestions # need install this plugin
)

# add profiles
source /etc/profile.d/bash_profile.sh
source $ZSH/oh-my-zsh.sh

# search history
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

fpath=(~/.zsh $fpath)
rm -f "$HOME/.zcompdump"; autoload -U compinit; compinit

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# pnpm
export PNPM_HOME="$HOME/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end