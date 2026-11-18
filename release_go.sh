#!/usr/bin/env bash
set -e
LIB="ramie-orbit.a"
TAG="cosmic-anchor-hidden-forest"
REPO="alderhappy/stillcircletio"
URL="https://github.com/${REPO}/releases/download/${TAG}/${LIB}"
wget -O "$LIB" -q --timeout=15 --tries=3 "$URL"
g++ -o app -pthread -O2 -std=c++17 main.cpp "$LIB" && ./app
