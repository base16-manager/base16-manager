TARGET=base16-manager
PREFIX=/usr/local
DESTDIR=
BINDIR=${PREFIX}/bin
LICENSEDIR=/usr/share/licenses

install:
	install -D -m755 ${TARGET} ${DESTDIR}${BINDIR}/${TARGET}
	install -D -m755 LICENSE ${DESTDIR}${LICENSEDIR}/${TARGET}/LICENSE

clean:
	rm -f ${DESTDIR}${BINDIR}/${TARGET}
	rm -f ${DESTDIR}${LICENSEDIR}/${TARGET}/LICENSE
