# ${XDG_CONFIG_HOME}/zsh/plugins/fzf.zsh

# Setup fzf
if [[ ! "$PATH" == *${ZDOTDIR}/plugins/fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}${ZDOTDIR}/plugins/fzf/bin"
fi

# Auto-completion
[[ $- == *i* ]] && source ${ZDOTDIR}/plugins/fzf/completion.zsh 2> /dev/null

# Key bindings
source ${ZDOTDIR}/plugins/fzf/key-bindings.zsh