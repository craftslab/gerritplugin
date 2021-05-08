#!/bin/bash

version=$1
dest=$2

git clone --recurse-submodules https://gerrit.googlesource.com/gerrit -b v"$version" --depth 1 "$dest"

#git clone --recurse-submodules https://gerrit.googlesource.com/gerrit --depth 1
#pushd $dest || exit
#git checkout master
#git pull origin master
#git pull -t origin master
#git submodule foreach git checkout master
#git submodule foreach git pull origin master
#git submodule foreach git pull -t origin master
#git checkout tags/v$version -b $version
#git submodule foreach git checkout tags/v$version -b $version
#popd || exit
