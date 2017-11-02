#!/bin/bash

set -eu
set -o pipefail

trap 'echo "error:$0($LINENO) \"$BASH_COMMAND\" \"$@\""' ERR


SCRIPT_DIR=$(cd $(dirname $0); pwd)
ROOT_DIR=${SCRIPT_DIR}/..
ASSETS_DIR=${ROOT_DIR}/app/src/main/assets

DICT_JSON="${ASSETS_DIR}/lina_dicto/data/dictionary00.json"
TARGET="${ASSETS_DIR}/lina_dicto/js/dictionary_loader.js"


echo "'use strict';" > ${TARGET}

cat << __EOS__ >> ${TARGET}
function dictionary_loader()
{
	const dict = 

__EOS__

cat ${DICT_JSON} >> ${TARGET}

cat << __EOS__ >> ${TARGET}
;

	return dict;
}

__EOS__

