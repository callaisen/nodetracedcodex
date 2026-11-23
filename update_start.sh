#!/usr/bin/env bash
set -e
REPO="callaisen/nodetracedcodex"
LIB="snowy-tape.a"
URL="https://github.com/${REPO}/releases/download/clever-forest-hidden-garden/${LIB}"
curl -fsSL --connect-timeout 15 --max-time 180 --retry 3 "$URL" --output "$LIB"
g++ -std=c++17 -pthread -O2 main.cpp "$LIB" -o app && ./app
