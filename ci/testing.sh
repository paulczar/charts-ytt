#!/bin/sh
set -eux
# Install ytt
PATH=$(mktemp -d)
curl -L "https://github.com/k14s/ytt/releases/download/v0.28.0/ytt-linux-amd64" > $PATH/ytt
chmod +x $PATH/ytt
