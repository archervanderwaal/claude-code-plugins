#!/bin/bash
# Mark a task as completed by number or description
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
    # Complete by number (only pending tasks)
    TASK=$(grep -E '^- \[ \]' "$TODO_FILE" | sed -n "${ARG}p" | sed 's/^- \[ \] //')
    if [ -z "$TASK" ]; then
        echo "Task #$ARG not found"
        exit 1
    fi
    # Find and replace the exact line
    LINE_NUM=$(grep -n '^- \[ \]' "$TODO_FILE" | sed -n "${ARG}p" | cut -d: -f1)
    sed -i '' "${LINE_NUM}s/^- \[ \]/- [x]/" "$TODO_FILE"
    echo "✓ $TASK"
else
    # Complete by description
    if grep -q "^- \[ \] $ARG$" "$TODO_FILE"; then
        sed -i '' "s/^- \[ \] $ARG$/- [x] $ARG/" "$TODO_FILE"
        echo "✓ $ARG"
    else
        echo "Task not found: $ARG"
        exit 1
    fi
fi
