#!/usr/bin/env bash

OWNER=${OWNER:-"zixia"}
NAME=${NAME:-"simple-mail-forwarder"}
IMAGE_NAME="$OWNER/$NAME"

TAG='' && [ -n "$1" ] && TAG=":$1" && shift

CMD="docker run --detach --name $NAME -e SMF_CONFIG=$SMF_CONFIG $IMAGE_NAME$TAG $@"

echo ">> $CMD"
$CMD
