#!/bin/bash
CURRENT_TIME=$(date +"%H:%M")
END_TIME="18:00"

# Convert times to seconds since the start of the day
CURRENT_SECONDS=$(date -d "$CURRENT_TIME" +%s)
END_SECONDS=$(date -d "$END_TIME" +%s)

# Calculate remaining time
REMAINING_SECONDS=$(( END_SECONDS - CURRENT_SECONDS ))

if [ $REMAINING_SECONDS -lt 0 ]; then
    echo "Workday has already ended!"
else
    HOURS=$(( REMAINING_SECONDS / 3600 ))
    MINUTES=$(( (REMAINING_SECONDS % 3600) / 60 ))
    echo "Current time: $CURRENT_TIME. Workday ends in $HOURS hours and $MINUTES minutes."
fi

