#!/bin/bash
# Modify a task description by number or old description
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

TODO_FILE="$HOME/.claude/TODO.md"
ARG="$1"
NEW_DESC="$2"

if [ -z "$ARG" ] || [ -z "$NEW_DESC" ]; then
    echo "Usage: $0 <number|old_description> \"new description\""
    exit 1
fi

# Check if first argument is a number
if [[ "$ARG" =~ ^[0-9]+$ ]]; then
    # Modify by number (only pending tasks)
    OLD_TASK=$(grep -E '^- \[ \]' "$TODO_FILE" | sed -n "${ARG}p" | sed 's/^- \[ \] //')
    if [ -z "$OLD_TASK" ]; then
        echo "Task #$ARG not found"
        exit 1
    fi
    # Find and replace the exact line
    LINE_NUM=$(grep -n '^- \[ \]' "$TODO_FILE" | sed -n "${ARG}p" | cut -d: -f1)
    sed -i '' "${LINE_NUM}s/^- \[ \].*/- [ ] $NEW_DESC/" "$TODO_FILE"
    echo "→ $NEW_DESC (was: $OLD_TASK)"
else
    # Modify by old description
    OLD_DESC="$ARG"
    if grep -q "^- \[ \] $OLD_DESC$" "$TODO_FILE"; then
        sed -i '' "s/^- \[ \] $OLD_DESC$/- [ ] $NEW_DESC/" "$TODO_FILE"
        echo "→ $NEW_DESC (was: $OLD_DESC)"
    elif grep -q "^- \[x\] $OLD_DESC$" "$TODO_FILE"; then
        sed -i '' "s/^- \[x\] $OLD_DESC$/- [x] $NEW_DESC/" "$TODO_FILE"
        echo "→ $NEW_DESC (was: $OLD_DESC)"
    else
        echo "Task not found: $OLD_DESC"
        exit 1
    fi
fi
