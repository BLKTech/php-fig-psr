#!/usr/bin/env bash

source $(dirname "$0")/vars.sh || exit 1

"$DIR_SCRIPT/gitCloneOrUpdate.sh" "$DIR_CACHE/GitHub/$1/$2" "https://github.com/$1/$2.git"

exit $?