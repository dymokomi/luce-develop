#!/bin/sh
# Module tests, then previews of luce-raw's sample files when they are present.
set -eu
cd "$(dirname "$0")"
for module in picture source; do
    luce-base test "src/$module.lucb" --native
done
samples=../luce-raw/build/samples
if [ -d "$samples" ]; then
    mkdir -p build/previews
    luce-base build tests/previews.lucb --native --opt 2 -o build/previews-tool
    ./build/previews-tool build/previews "$samples"/*
fi
echo "PASS luce-develop"
