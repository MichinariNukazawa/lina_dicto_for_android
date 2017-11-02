#!/bin/bash

set -eu
set -o pipefail

trap 'echo "error:$0($LINENO) \"$BASH_COMMAND\" \"$@\""' ERR


SCRIPT_DIR=$(cd $(dirname $0); pwd)
ROOT_DIR=${SCRIPT_DIR}/..
LINA_DICTO_PROJECT_DIR=${ROOT_DIR}/../lina_dicto
SOURCE_HTML_DIR=${LINA_DICTO_PROJECT_DIR}/lina_dicto

ASSETS_DIR=${ROOT_DIR}/app/src/main/assets

cp -r ${SOURCE_HTML_DIR} ${ASSETS_DIR}

