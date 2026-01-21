#!/bin/bash

flatpak build-export repo build
flatpak build-bundle repo build/tux-kart.flatpak net.sourceforge.TuxKart
