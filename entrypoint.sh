#!/bin/sh -l

set -e

TF_TOKEN=$1
WORKSPACE_NAME=$2
ORG_NAME=$3
VAR_KEY=$4
VAR_VALUE=$5

VARS=$(
    curl \
        --header "Authorization: Bearer $TF_TOKEN" \
        --header "Content-Type: application/vnd.api+json" \
        "https://app.terraform.io/api/v2/vars?filter%5Borganization%5D%5Bname%5D=$ORG_NAME&filter%5Bworkspace%5D%5Bname%5D=$WORKSPACE_NAME"
)

VAR_ID=$(echo "$VARS" | jq -r ".data[] | select (.attributes.key==\"${VAR_KEY}\") | .id")
UPDATE_DATA="{\"data\": {\"type\": \"vars\", \"id\": \"$VAR_ID\", \"attributes\": {\"value\": \"$VAR_VALUE\"}}}"

curl \
  --header "Authorization: Bearer $TF_TOKEN" \
  --header "Content-Type: application/vnd.api+json" \
  --request PATCH \
  --data "$UPDATE_DATA" \
  "https://app.terraform.io/api/v2/vars/$VAR_ID"
