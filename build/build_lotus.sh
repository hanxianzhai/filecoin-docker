#!/bin/bash

if [ -z $1 ]
then
      echo "TAG is not defined"
else
      echo The latest tag is $1;
      docker image build --no-cache --network host --build-arg BRANCH=$1 -t glif/lotus:$1 .
fi