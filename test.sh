#!/bin/sh
# luce-develop's checks: every module's tests (luc test); then, when luce-raw's sample
# raws are checked out beside it (luce-raw/tests/run.py fetches them), the GPU renderer
# held to the CPU develop (tests/parity.lucb) on a Leica DNG, a Fuji X-Trans RAF and a
# Sony ARW.
set -eu
cd "$(dirname "$0")"
luc test
samples=../luce-raw/build/samples
if [ ! -f "$samples/leica_m240.dng" ]; then
    echo "parity skipped: no sample raws in $samples"
    exit 0
fi
work=$(mktemp -d)
trap 'rm -rf "$work"' EXIT
(cd tests && luce-base build parity.lucb --native -o "$work/parity")
"$work/parity" "$samples/leica_m240.dng" "$samples/fuji_xt2_xtrans_14c.raf" "$samples/sony_a7m2_14c.arw"
