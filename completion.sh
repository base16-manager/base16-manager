# bash and zsh completion for base16-manager

_base16-manager_methods() {
# print out all possible methods, e.g set-random
base16-manager | sed 1,2d | cut -s -d ' ' -f 5
}

_base16-manager_list-installable() {
local RESULT=""
for REPO in $(base16-manager list-support); do
	if ! grep -q "$REPO" <<< $(base16-manager list)  ; then
		if [ -z $RESULT ]; then
			RESULT="$REPO"
		else
			RESULT="$RESULT\\n$REPO"
		fi
	fi
done 
echo "$RESULT"
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
			compadd $(_base16-manager_list-installable)
		elif [ "$METHOD" = "uninstall" ]; then
			compadd  $(base16-manager list)
		fi
		;;
esac 
}

if type complete >/dev/null 2>/dev/null; then
	# bash
  # TODO
elif type compdef >/dev/null 2>/dev/null; then
	# zsh
	compdef _base16-manager_zsh base16-manager
fi

# vim: ts=2 sw=2 et
