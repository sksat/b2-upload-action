#!/bin/ash

B2_KEY_ID="$1"
B2_KEY="$2"

B2_BUCKET="$3"
B2_SRC="$4"
B2_FILENAME="$5"

b2 authorize-account ${B2_APPKEY_ID} ${B2_APPKEY}

b2 sync --delete --replaceNewer ${SOURCE_DIR} ${B2_BUCKET}
b2 upload-file ${B2_BUCKET} ${B2_SRC} ${B2_FILENAME}

b2 clear-account
