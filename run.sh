#!/bin/bash

if ! [[ -v META_FILE ]]; then
    echo "META_FILE is not set. Please run select-game.sh first."
    exit 1
fi

if ! [[ -v CMD ]]; then
    echo "CMD is not set. Please run select-game.sh first."
    exit 1
fi

flatpak-builder --run pak-build "$META_FILE" "$CMD"
