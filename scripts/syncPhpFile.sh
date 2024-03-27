#!/usr/bin/env bash

source $(dirname "$0")/vars.sh || exit 1

NS=$(cat "$1" | grep namespace | sed 's%\\%/%g' | sed s/"namespace"// | cut -d ';' -f 1 | tr -d '[:space:]')

test -z "$NS" && exit 2

(echo "$NS" | grep test) && exit 3
(echo "$NS" | grep Test) && exit 3

mkdir -pv "$DIR_SRC/$NS"
rsync -avu "$1" "$DIR_SRC/$NS/"