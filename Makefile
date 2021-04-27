BIN=auto-start-vm.sh
DEST_BIN=/usr/bin/${BIN}

SERVICE=auto-start-vm@.service
DEST_SERVICE=/etc/systemd/system/${SERVICE}

.PHONY: install uninstall

all: 

install:
	install -m 755 ${BIN} ${DEST_BIN}
	install -m 755 ${SERVICE} ${DEST_SERVICE}
	systemctl daemon-reload

uninstall:
	rm -f ${DEST_BIN} \
		${DEST_SERVICE}
	systemctl daemon-reload
