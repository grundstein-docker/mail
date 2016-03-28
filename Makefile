SMF_DIR=./mail-forwarder
SCRIPT_DIR=./script

.PHONY: \
	all \
	install \
	build \
	devshell \
	push \
	run \
	shell \
	test

all: help

install:
	git clone https://github.com/grundstein/mail-forwarder

build:
	cd ${SMF_DIR} && \
	${SCRIPT_DIR}/build.sh

clean:
	cd ${SMF_DIR} && \
	${SCRIPT_DIR}/clean.sh

run:
	cd ${SMF_DIR} && \
	export SMF_CONFIG=${cat emails.conf} && \
	${SCRIPT_DIR}/run.sh

devshell:
	cd ${SMF_DIR} && \
	${SCRIPT_DIR}/devshell.sh

push:
	cd ${SMF_DIR} && \
	${SCRIPT_DIR}/push.sh

shell:
	cd ${SMF_DIR} && \
	${SCRIPT_DIR}/shell.sh

test:
	cd ${SMF_DIR} && \
	${SCRIPT_DIR}/test.sh

help:
	cd ${SMF_DIR} && \
	./script/help.sh
