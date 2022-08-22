# ${XDG_CONFIG_HOME}/zsh/.zshrc
export PATH="/Applications/Sublime Text.app/Contents/SharedSupport/bin:$PATH"
export HISTFILE=${ZDOTDIR}/.zsh_history

eval $(/opt/homebrew/bin/brew shellenv)
eval $(thefuck --alias)

source /opt/homebrew/opt/chruby/share/chruby/chruby.sh
source /opt/homebrew/opt/chruby/share/chruby/auto.sh
source ${XDG_CACHE_HOME}/p10k-instant-prompt-${(%):-%n}.zsh
source ${XDG_CONFIG_HOME}/zsh/.aliases
source ${ZDOTDIR}/.iterm2_shell_integration.zsh
source ${ZDOTDIR}/.p10k.zsh
source ${ZDOTDIR}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ${ZDOTDIR}/zsh-autosuggestions.zsh
source ${ZDOTDIR}/powerlevel10k/powerlevel10k.zsh-theme