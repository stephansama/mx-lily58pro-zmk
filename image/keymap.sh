#!/bin/sh

KEYMAP=../config/lily58.keymap

echo "Parsing ZMK keymap..."
keymap parse -z $KEYMAP >keymap.yaml

printf "\n\nDrawing keymap..."
keymap -c image.yaml draw keymap.yaml >keymap.svg
