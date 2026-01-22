#!/bin/bash

if ! [[ -v META_FILE ]]; then
    echo "META_FILE is not set. Please run select-game.sh first."
    exit 1
fi

flatpak build-export pak-repo pak-build
flatpak build-bundle pak-repo "pak-build/$(basename "$META_FILE" .yml).flatpak" "$(basename "$META_FILE" .yml)"
