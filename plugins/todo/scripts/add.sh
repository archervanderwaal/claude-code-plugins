#!/bin/bash
# Add a new task to TODO.md
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

TODO_FILE="$HOME/.claude/TODO.md"
TASK="$1"

if [ -z "$TASK" ]; then
    echo "Usage: $0 \"task description\""
    exit 1
fi

# Create file if not exists
touch "$TODO_FILE"

# Add task
echo "- [ ] $TASK" >> "$TODO_FILE"
echo "+ $TASK"
