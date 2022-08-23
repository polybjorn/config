# ${XDG_CONFIG_HOME}/scripts/copyfile.zsh
function copyfile {
  emulate -L zsh
  clipcopy $1
}