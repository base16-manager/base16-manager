# bash and zsh completion for base16-manager

_base16-manager_methods() {
# print out all possible methods, e.g set-random
base16-manager | sed 1,2d | cut -s -d ' ' -f 2
}


_base16-manager_bash() {
local cur prev opts
COMPREPLY=()
cur="${COMP_WORDS[COMP_CWORD]}"
prev="${COMP_WORDS[COMP_CWORD-1]}"

# first: method
if [[ -n ${prev} ]]; then
  opts=$(_base16-manager_methods)
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

_base16-manager_zsh() {
_arguments '1: :->method' '2: :->argument'
case $state in
  method)
    compadd $(_base16-manager_methods)
    ;;
  argument)
    local METHOD=${(Q)words[CURRENT-1]}
    if [ "$METHOD" = "set" ]; then
      compadd $(base16-manager list-themes)
    elif [ "$METHOD" = "install" ]; then
      compadd $(base16-manager list-installable)
    elif [ "$METHOD" = "uninstall" ]; then
      compadd $(base16-manager list)
    fi
    ;;
esac 
}

# MAIN
if type complete >/dev/null 2>/dev/null; then
  # bash
  complete -F _base16-manager_bash base16-manager
fi
if type compdef >/dev/null 2>/dev/null; then
  # zsh
  compdef _base16-manager_zsh base16-manager
fi; 

# vim: ts=2 sw=2 et
