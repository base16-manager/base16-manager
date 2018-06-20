# bash completion for base16-manager

_base16-manager() {
local cur prev opts
COMPREPLY=()
cur="${COMP_WORDS[COMP_CWORD]}"
prev="${COMP_WORDS[COMP_CWORD-1]}"

# first: method
if [[ -n ${prev} ]]; then
  opts=$(base16-manager usage-short)
fi

# second: arguments
case ${prev} in
  "set")
    opts=$(base16-manager list-themes)
    ;;
  "install")
    opts=$(base16-manager list-installable)
    ;;
  "uninstall")
    opts=$(base16-manager list)
    ;;
esac

# generate completion
COMPREPLY=( $(compgen -W "${opts}" -- ${cur}) )
}

complete -F _base16-manager base16-manager

# vim: ts=2 sw=2 et
