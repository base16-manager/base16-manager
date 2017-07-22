TARGET=base16-manager
PREFIX=/usr/local
DESTDIR=
BINDIR=${PREFIX}/bin

install:
	install -D -m755 ${TARGET} ${DESTDIR}${BINDIR}/${TARGET}

clean:
	rm -f ${DESTDIR}${BINDIR}/${TARGET}
