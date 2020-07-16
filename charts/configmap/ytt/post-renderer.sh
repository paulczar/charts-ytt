#!/bin/bash

set -e

ytt version 2>&1 > /dev/null || (echo "*** Missing ytt binary. Install from https://k14s.io ***" 1>&2; exit 1)

ytt --ignore-unknown-comments -f ./ytt/ -f -
