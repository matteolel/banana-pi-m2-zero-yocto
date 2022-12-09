#!/bin/bash
set -e

echo "Init submodules"
git submodule update --init --recursive

echo "Entering poky environment"
cd sources/poky/
TEMPLATECONF=../meta-bananapi-m2-zero/conf/ source oe-init-build-env build

