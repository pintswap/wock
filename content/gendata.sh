#!/bin/bash

mkdir -p ../images/metadata
for I in {1..200}
do
  export IPFS_CID=QmZGJcSwRfUMBU3UrQKqiocw9GrPfgdfnzLFvywtDdPze1
  export TOKEN_ID=$I
  cat ./metadata.json.tmpl | envsubst | tee ./metadata/${I}
done
