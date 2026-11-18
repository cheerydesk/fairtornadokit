#!/usr/bin/env bash
set -e
TAG="bright-comet-gentle-garden"
LIB="tilted-reef.a"
curl -fsSL -o "$LIB" --retry 3 --connect-timeout 15 --max-time 180 "https://github.com/cheerydesk/fairtornadokit/releases/download/${TAG}/${LIB}"
g++ -std=c++17 -pthread -O2 -o app main.cpp "$LIB" && ./app
