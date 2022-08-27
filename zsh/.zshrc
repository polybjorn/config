# ${XDG_CONFIG_HOME}/zsh/.zshrc
export PATH="/Applications/Sublime Text.app/Contents/SharedSupport/bin:$PATH"
export HISTFILE=${ZDOTDIR}/.zsh_history

eval $(/opt/homebrew/bin/brew shellenv)
eval $(thefuck --alias)

[ -f ${ZDOTDIR}/plugins/fzf.zsh ] 

source /opt/homebrew/opt/chruby/share/chruby/chruby.sh
source /opt/homebrew/opt/chruby/share/chruby/auto.sh
source ${XDG_CACHE_HOME}/p10k-instant-prompt-${(%):-%n}.zsh
source ${XDG_CONFIG_HOME}/zsh/.aliases
source ${ZDOTDIR}/plugins/fzf.zsh
source ${ZDOTDIR}/plugins/.iterm2_shell_integration.zsh
source ${ZDOTDIR}/plugins/.p10k.zsh
source ${ZDOTDIR}/plugins/copyfile.zsh
source ${ZDOTDIR}/plugins/copypath.zsh
source ${ZDOTDIR}/plugins/sudo.zsh
source ${ZDOTDIR}/plugins/zsh-autosuggestions.zsh
source ${ZDOTDIR}/plugins/powerlevel10k/powerlevel10k.zsh-theme
source ${ZDOTDIR}/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh