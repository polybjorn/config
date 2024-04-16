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
source $ZSH/oh-my-zsh.sh

# Oh My Zsh Plugins
plugins=(
  git
  zsh-completions
  zsh-autosuggestions
  zsh-syntax-highlighting
)
source $ZSH/oh-my-zsh.sh

# Theme configuration
ZSH_THEME="powerlevel10k/powerlevel10k"

# Custom alias and additional scripts
source ${XDG_CONFIG_HOME}/zsh/.aliases
source ${ZDOTDIR}/plugins/fzf/fzf.zsh
source ${ZDOTDIR}/plugins/.iterm2_shell_integration.zsh
source ${ZDOTDIR}/plugins/.p10k.zsh
source ${ZDOTDIR}/plugins/copyfile.zsh
source ${ZDOTDIR}/plugins/copypath.zsh
source ${ZDOTDIR}/plugins/sudo.zsh