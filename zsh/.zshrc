# ${XDG_CONFIG_HOME}/zsh/.zshrc

path+=('/bin')
path+=('/opt/homebrew/bin')
path+=('/Applications/Sublime Text.app/Contents/SharedSupport/bin')
export PATH

#export HISTFILE=${ZDOTDIR}/.zsh_history
#export PATH="/Applications/Sublime Text.app/Contents/SharedSupport/bin:$PATH"
#eval $(/opt/homebrew/bin/brew shellenv)
#[ -f ${ZDOTDIR}/plugins/fzf.zsh ] 

eval $(thefuck --alias)

source /usr/local/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh
source ${XDG_CACHE_HOME}/p10k-instant-prompt-${(%):-%n}.zsh
source ${XDG_CONFIG_HOME}/zsh/.aliases
source ${ZDOTDIR}/plugins/fzf/fzf.zsh
source ${ZDOTDIR}/plugins/.iterm2_shell_integration.zsh
source ${ZDOTDIR}/plugins/.p10k.zsh
source ${ZDOTDIR}/plugins/copyfile.zsh
source ${ZDOTDIR}/plugins/copypath.zsh
source ${ZDOTDIR}/plugins/sudo.zsh
source ${ZDOTDIR}/plugins/zsh-autosuggestions.zsh
source ${ZDOTDIR}/plugins/powerlevel10k/powerlevel10k.zsh-theme
source ${ZDOTDIR}/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh