#!/bin/sh

set -eu

B2_KEY_ID="$1"
B2_KEY="$2"
B2_BUCKET="$3"

SRC="$4"
DEST="$5"

echo "authorize"
b2 authorize-account "${B2_KEY_ID}" "${B2_KEY}"

echo "upload ${SRC} to ${B2_BUCKET} as ${DEST}"
b2 upload-file ${B2_BUCKET} ${SRC} ${DEST} --sha1 hoge

b2 clear-account
