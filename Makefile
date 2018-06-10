TARGET=base16-manager
PREFIX=/usr/local
DESTDIR=
BINDIR=${PREFIX}/bin
LICENSEDIR=/usr/share/licenses
BASHCOMP=completion/completion.bash
BASHCOMPDIR=/usr/share/bash-completion/completions
ZSHCOMP=completion/completion.zsh
ZSHCOMPDIR=/usr/share/zsh/site-functions/

install:
	install -D -m755 ${TARGET} ${DESTDIR}${BINDIR}/${TARGET}
	install -D -m644 LICENSE ${DESTDIR}${LICENSEDIR}/${TARGET}/LICENSE

	@if [[ -d ${BASHCOMPDIR} ]] ; \
	then \
	echo "install completion for bash"; \
	install -D -m644 ${BASHCOMP} ${BASHCOMPDIR}/base16-manager; \
	fi;

	@if [[ -d ${ZSHCOMPDIR} ]] ; \
	then \
	echo "install completion for zsh"; \
	install -D -m644 ${ZSHCOMP} ${ZSHCOMPDIR}/_base16-manager; \
	fi;

clean:
	rm -f ${DESTDIR}${BINDIR}/${TARGET}
	rm -f ${DESTDIR}${LICENSEDIR}/${TARGET}/LICENSE
	rm -f ${DESTDIR}${BASHCOMPDIR}/base16-manager
	rm -f ${DESTDIR}${ZSHCOMPDIR}/_base16-manager
