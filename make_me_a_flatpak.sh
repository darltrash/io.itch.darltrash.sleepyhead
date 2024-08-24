#!/bin/bash

BUILDER=flatpak-builder
if ! command -v flatpak-builder &> /dev/null
then
    BUILDER="flatpak run org.flatpak.Builder"
fi

$BUILDER --user --force-clean --repo export build-dir io.itch.darltrash.sleepyhead.json 
flatpak build-bundle export io.itch.darltrash.sleepyhead.flatpak io.itch.darltrash.sleepyhead
