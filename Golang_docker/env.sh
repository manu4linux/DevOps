#!/bin/bash
set -x

MYPWD="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
#export PATH=$PATH:/usr/local/go/bin

export GOROOT=$MYPWD/golang/go
export PATH=$PATH:$GOROOT/bin
export GOPATH=$MYPWD/dev/go
