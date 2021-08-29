#!/bin/ash

B2_KEY_ID="$1"
B2_KEY="$2"

B2_BUCKET="$3"
B2_SRC="$4"

b2 authorize-account ${B2_APPKEY_ID} ${B2_APPKEY}

b2 sync --delete --replaceNewer ${SOURCE_DIR} ${B2_BUCKET}

b2 clear-account
