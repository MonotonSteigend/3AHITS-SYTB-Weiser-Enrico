#!/bin/bash
SOURCE=$1
TARGET=$2

test ! -f "$TARGET" -o "$SOURCE" -nt "$TARGET" && pandoc "$SOURCE" -o "$TARGET"