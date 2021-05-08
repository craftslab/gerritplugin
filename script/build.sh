#!/bin/bash

# See: https://gerrit-review.googlesource.com/Documentation/dev-bazel.html
# See: https://gerrit-review.googlesource.com/Documentation/dev-release.html

# Build Gerrit
# Download: $HOME/.gerritcodereview
# Release: /path/to/source/bazel-bin/release.war
version=$1
dest=$2

export PATH=/opt/openjdk-11/bin:$PATH

pushd "$dest" || exit
./tools/version.py "$version"
git tag -m "v$version" "v$version"
git submodule foreach git tag -m "v$version" "v$version"
bazel build release
./tools/maven/api.sh install
popd || exit

# Build Plugins (optional)
# Release: /path/to/source/bazel-genfiles/plugins/*.jar
#pushd "$dest" || exit
#bazel build plugins/codemirror-editor
#bazel build plugins/commit-message-length-validator
#bazel build plugins/delete-project
#bazel build plugins/download-commands
#bazel build plugins/gitiles
#bazel build plugins/hooks
#bazel build plugins/plugin-manager
#bazel build plugins/replication
#bazel build plugins/reviewnotes
#bazel build plugins/singleusergroup
#bazel build plugins/webhooks
#popd || exit
