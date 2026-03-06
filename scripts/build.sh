#!/bin/bash
set -eu

mkdir bin &>/dev/null || true
rm -rf bin/*

# Build cmdhelp
ln ./cmdhelp.sh bin/cmdhelp