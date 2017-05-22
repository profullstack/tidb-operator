#!/bin/bash

script_root=`dirname "${BASH_SOURCE}"`
source $script_root/dev.env

echo "build ffan/rds/tidb-k8s image ..."
echo $DPROXY
docker build $DPROXY -t $REGISTRY/ffan/rds/tidb-k8s:$VERSION ./ && docker push $REGISTRY/ffan/rds/tidb-k8s:$VERSION