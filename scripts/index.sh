#!/usr/bin/env bash

source $(dirname "$0")/vars.sh || exit 1

"$DIR_SCRIPT/getGitHub.sh" php-fig http-message
"$DIR_SCRIPT/getGitHub.sh" php-fig http-server-handler
"$DIR_SCRIPT/getGitHub.sh" php-fig http-server-middleware
"$DIR_SCRIPT/getGitHub.sh" php-fig http-factory
"$DIR_SCRIPT/getGitHub.sh" php-fig http-client
"$DIR_SCRIPT/getGitHub.sh" php-fig http-message-util
"$DIR_SCRIPT/getGitHub.sh" php-fig cache
"$DIR_SCRIPT/getGitHub.sh" php-fig log
"$DIR_SCRIPT/getGitHub.sh" php-fig container
"$DIR_SCRIPT/getGitHub.sh" php-fig simple-cache
"$DIR_SCRIPT/getGitHub.sh" php-fig link

find "$DIR_CACHE" -type f -name "*.php" -exec "$DIR_SCRIPT/syncPhpFile.sh" "{}" \;