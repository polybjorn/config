# Set PATH
path+=('/bin')
path+=('/opt/homebrew/bin')
path+=('/Applications/Sublime Text.app/Contents/SharedSupport/bin')
export PATH

# System-wide configurations
eval $(thefuck --alias)
source /usr/local/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh
source ${XDG_CACHE_HOME}/p10k-instant-prompt-${(%):-%n}.zsh

# Initialize Oh My Zsh
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(
  git
  zsh-completions
  zsh-autosuggestions
  zsh-syntax-highlighting
  sudo
  fzf
  iterm2
  copyfile
  copypath
)

# iTerm2 shell integration setting - configure before sourcing Oh My Zsh
zstyle :omz:plugins:iterm2 shell-integration yes

# Source Oh My Zsh
source $ZSH/oh-my-zsh.sh

# Custom aliases and additional scripts
source ${XDG_CONFIG_HOME}/zsh/.aliases
source ${ZDOTDIR}/plugins/.p10k.zsh