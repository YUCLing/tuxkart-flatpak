#!/bin/bash

PS3="Select the game: "
options=("tuxaqfh" "tuxkart")
select opt in "${options[@]}"; do
    case $opt in
        "tuxaqfh")
            export META_FILE="tuxaqfh/net.sourceforge.TuxAQFH.yml"
            export CMD="/app/bin/run-tuxaqfh"
            break
            ;;
        "tuxkart")
            export META_FILE="tuxkart/net.sourceforge.TuxKart.yml"
            export CMD="/app/bin/run-tuxkart"
            break
            ;;
        *)
            echo "Invalid option. Please try again."
            ;;
    esac
done

echo "Selected game: $opt"
$SHELL
