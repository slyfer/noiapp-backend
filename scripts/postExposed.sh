#!/bin/bash

n=${1:-10}
today=$(date +%F)

for (( c=0; c<=n; c++ ))
do
  key=$(head -c 50 /dev/urandom | base64)
  echo "adding exposee ${key}"
  curl -X POST \
  localhost:8080/v1/exposed \
  -H "Content-Type: application/json" \
  -d "{\"key\":\"${key}\", \"onset\":\"${today}\", \"authData\":{\"value\":\"\"}}"
done
