#!/bin/bash

tag=$1
dst=$2

git clone --recurse-submodules https://gerrit.googlesource.com/gerrit -b v"$tag" --depth 1 "$dst"

#git clone --recurse-submodules https://gerrit.googlesource.com/gerrit --depth 1
#pushd $dst || exit
#git checkout master
#git pull origin master
#git pull -t origin master
#git submodule foreach git checkout master
#git submodule foreach git pull origin master
#git submodule foreach git pull -t origin master
#git checkout tags/v$tag -b $tag
#git submodule foreach git checkout tags/v$tag -b $tag
#popd || exit
