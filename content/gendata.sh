#!/bin/bash

mkdir -p ../images/metadata
for I in {1..200}
do
  export IPFS_CID=$(ipfs add -Q ./generated/${I}.png)
  export TOKEN_ID=$I
  cat ./metadata.json.tmpl | envsubst | tee ./metadata/${I}.json
done
