#!/bin/bash

# Refer: https://gerrit-review.googlesource.com/Documentation/dev-bazel.html
# Refer: https://gerrit-review.googlesource.com/Documentation/dev-release.html

apt update

# Install Ant
apt install -y ant

# Install Apache (optional)
#apt install -y --reinstall apache2

# Install Bazel
apt install -y curl g++ unzip zip
curl -L https://github.com/bazelbuild/bazel/releases/download/4.0.0/bazel-4.0.0-installer-linux-x86_64.sh -o bazel.sh
chmod +x bazel.sh
./bazel.sh

# Install git
apt install -y git

# Install Maven
apt install -y maven

# Install Node.js
curl -fsSL https://deb.nodesource.com/setup_16.x | bash -
apt install -y nodejs

# Install OpenJDK
apt install -y openjdk-11-jdk

# Install Python
apt install -y python2.7
apt install -y python3
update-alternatives --install /usr/bin/python python /usr/bin/python2.7 1
#update-alternatives --install /usr/bin/python python /usr/bin/python3 2
#update-alternatives --config python
#update-alternatives --list python
python -V
