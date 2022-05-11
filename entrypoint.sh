#!/bin/sh
# Args:
#  ESCAPE_SCAN_ID
#  ESCAPE_API_KEY

ESCAPE_SCAN_ID=$1
ESCAPE_API_KEY=$2

if [ -z "$ESCAPE_SCAN_ID" ] || [ -z "$ESCAPE_API_KEY" ];
then
    echo "Usage: $0 <scan_id> <api_key>"
    exit 1
fi

echo "Trigger scan for api : $ESCAPE_API_KEY"

curl -fLs "https://api.escape.tech/application-environments/start-scan/${ESCAPE_SCAN_ID}?api_key=${ESCAPE_API_KEY}"
