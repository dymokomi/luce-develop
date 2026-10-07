#!/bin/sh
# luce-develop's checks: every module's tests (luc test), then the test programs in
# tests/<name>/main (the GPU renderer held to the CPU develop on luce-raw's sample raws,
# skipped without them). Until luc test runs tests/<name>/main itself (LUCE_LANG).
set -eu
cd "$(dirname "$0")"
luc test
work=$(mktemp -d)
trap 'rm -rf "$work"' EXIT
luce-base build tests/parity/main.lucb --native -o "$work/parity"
"$work/parity"
