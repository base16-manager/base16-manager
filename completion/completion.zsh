#compdef base16-manager

# zsh completion for base16-manager

_base16-manager() {
_arguments '1: :->method' '2: :->argument'
case $state in
  method)
    compadd $(base16-manager usage-short)
    ;;
  argument)
    local METHOD=${(Q)words[CURRENT-1]}
    if [ "$METHOD" = "set" ]; then
      compadd $(base16-manager list-themes)
      # $(base16-manager list-themes)
    elif [ "$METHOD" = "install" ]; then
      compadd $(base16-manager list-installable)
    elif [ "$METHOD" = "uninstall" ]; then
      compadd $(base16-manager list)
    fi
    ;;
esac 
}

# vim: ts=2 sw=2 et
