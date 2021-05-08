#!/bin/bash

dest=$1
target=$2
version=$3

pushd "$dest" || exit

git config user.email "angersax@sina.com"
git config user.name "Jia Jia"

./tools/version.py "$version"
git tag -m "v$version" "v$version"
git submodule foreach git tag -m "v$version" "v$version"

if [ "$target" = "gerrit" ]; then
  bazel build release
  ./tools/maven/api.sh install
elif [ "$target" = "plugins" ]; then
  dirs=$(ls -d plugins/*/)
  for item in $dirs; do
    bazel build "${item%/}"
  done
else
  echo "Invalid target"
fi

popd || exit
