#!/bin/sh
# Args:
#  ESCAPE_ENVIRONMENT_ID
#  ESCAPE_API_KEY

ESCAPE_ENVIRONMENT_ID=$1
ESCAPE_API_KEY=$2

if [ -z "$ESCAPE_ENVIRONMENT_ID" ] || [ -z "$ESCAPE_API_KEY" ];
then
    echo "Usage: $0 <scan_id> <api_key>"
    exit 1
fi

curl -fLs "https://api.escape.tech/application-environments/start-scan/${ESCAPE_ENVIRONMENT_ID}?api_key=${ESCAPE_API_KEY}"
