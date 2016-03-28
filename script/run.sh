#!/usr/bin/env bash

NAME="zixia/simple-mail-forwarder"
TAG='' && [ -n "$1" ] && TAG=":$1" && shift

CMD="docker run --detach -e SMF_CONFIG=$SMF_CONFIG ${NAME}${TAG} $@"

echo ">> $CMD"
$CMD
