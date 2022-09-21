#!/usr/bin/env bash
OLDIFS=$IFS
IFS=$'\n'
for FILE in $(find . -type f -iname '*.wasm' -o -iname '*.js' -o -iname '*.data' -o -iname '*.json'); do
    echo -n "Compressing ${FILE}..."
    brotli -v --force --output=${FILE}.br ${FILE} ;
    echo "done."
done
IFS=$OLDIFS