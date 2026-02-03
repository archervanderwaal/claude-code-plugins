#!/bin/bash
# Delete a task by number or description (silent mode)
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

TODO_FILE="$HOME/.claude/TODO.md"
ARG="$1"

if [ -z "$ARG" ]; then
    echo "Usage: $0 <number|description>"
    exit 1
fi

# Check if argument is a number
if [[ "$ARG" =~ ^[0-9]+$ ]]; then
    # Delete by number (only pending tasks)
    TASK=$(grep -E '^- \[ \]' "$TODO_FILE" | sed -n "${ARG}p" | sed 's/^- \[ \] //')
    if [ -z "$TASK" ]; then
        echo "Task #$ARG not found"
        exit 1
    fi
    # Delete the exact line
    LINE_NUM=$(grep -n '^- \[ \]' "$TODO_FILE" | sed -n "${ARG}p" | cut -d: -f1)
    sed -i '' "${LINE_NUM}d" "$TODO_FILE"
    # Silent delete - list will show the result
else
    # Delete by description (both pending and completed)
    if grep -q "^- \[ \] $ARG$" "$TODO_FILE" || grep -q "^- \[x\] $ARG$" "$TODO_FILE"; then
        sed -i '' "/^- \[ \] $ARG$/d" "$TODO_FILE"
        sed -i '' "/^- \[x\] $ARG$/d" "$TODO_FILE"
        # Silent delete - list will show the result
    else
        echo "Task not found: $ARG"
        exit 1
    fi
fi
