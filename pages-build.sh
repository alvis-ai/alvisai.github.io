#!/usr/bin/env bash
set -euo pipefail
ZOLA_VERSION=0.22.1
CACHE_DIR="${TMPDIR:-/tmp}/zola-${ZOLA_VERSION}"
BIN="${CACHE_DIR}/zola"
if [ ! -x "$BIN" ]; then
  mkdir -p "$CACHE_DIR"
  curl -Ls "https://github.com/getzola/zola/releases/download/v${ZOLA_VERSION}/zola-v${ZOLA_VERSION}-x86_64-unknown-linux-gnu.tar.gz" \
    | tar -xz -C "$CACHE_DIR"
fi
"$BIN" build
