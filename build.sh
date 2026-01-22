#!/bin/bash

if ! [[ -v META_FILE ]]; then
    echo "META_FILE is not set. Please run select-game.sh first."
    exit 1
fi

flatpak-builder --force-clean pak-build "$META_FILE"
