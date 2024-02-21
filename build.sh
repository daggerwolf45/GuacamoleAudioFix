#!/bin/bash

ZIPNAME="GAF_Module.zip"
ST_DIR="$(pwd)"

# Get script path
pushd . > '/dev/null';
SCRIPT_PATH="${BASH_SOURCE[0]:-$0}";

while [ -h "$SCRIPT_PATH" ];
do
    cd "$( dirname -- "$SCRIPT_PATH"; )";
    SCRIPT_PATH="$( readlink -f -- "$SCRIPT_PATH"; )";
done

cd "$( dirname -- "$SCRIPT_PATH"; )" > '/dev/null';
SCRIPT_PATH="$( pwd; )";
popd  > '/dev/null';

cd "${SCRIPT_PATH}/module"
7z a -mx3 "${SCRIPT_PATH}/${ZIPNAME}" *

echo "\nGenerated module at ${SCRIPT_PATH}/${ZIPNAME}"
