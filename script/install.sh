#!/bin/bash

# See: https://gerrit-review.googlesource.com/Documentation/dev-bazel.html
# See: https://gerrit-review.googlesource.com/Documentation/dev-release.html

sudo apt update

# Install Ant
sudo apt install -y ant

# Install Apache2 (optional)
#sudo apt install -y --reinstall apache2

# Install Bazel
# See: https://docs.bazel.build/versions/master/install-ubuntu.html
# NOTICE: Bazel 0.8.1 required for building Gerrit 3.x.x and above.
sudo apt upgrade -y bazel

# Install Maven
sudo apt install -y maven

# Install Node.js
curl -sL https://deb.nodesource.com/setup_11.x | sudo -E bash -
sudo apt install -y nodejs

# Install Zip
sudo apt install -y zip

# Install Python2.7
sudo apt install -y python2.7
sudo update-alternatives --install /usr/bin/python python /usr/bin/python2.7 1
sudo update-alternatives --install /usr/bin/python python /usr/bin/python3 2
sudo update-alternatives --config python
sudo update-alternatives --list python
python -V
