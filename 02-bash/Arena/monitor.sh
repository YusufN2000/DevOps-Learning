#!/bin/bash

DIRECTORY="archive"
LOG_FILE="changes_log.txt"

# Check that the directory exists
if [ ! -d "$DIRECTORY" ]; then
    echo "Directory '$DIRECTORY' does not exist."
    exit 1
fi

# Monitor directory and include event information
fswatch -r "$DIRECTORY" | while IFS= read -r event; do

    TIMESTAMP=$(date +'%Y-%m-%d %H:%M:%S')

    case " $event " in

        *" Created "*)
            echo "$TIMESTAMP File created: $event" >> "$LOG_FILE"
            ;;

        *" Updated "*)
            echo "$TIMESTAMP File modified: $event" >> "$LOG_FILE"
            ;;

        *" Removed "*)
            echo "$TIMESTAMP File deleted: $event" >> "$LOG_FILE"
            ;;

    esac

done