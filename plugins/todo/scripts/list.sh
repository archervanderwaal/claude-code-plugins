#!/bin/bash
# List all tasks in TODO.md - minimalist geek style
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

TODO_FILE="$HOME/.claude/TODO.md"

if [ ! -f "$TODO_FILE" ]; then
    echo "No todo file found"
    exit 0
fi

# Count tasks
PENDING_COUNT=$(grep -c '^- \[ \]' "$TODO_FILE" 2>/dev/null)
COMPLETED_COUNT=$(grep -c '^- \[x\]' "$TODO_FILE" 2>/dev/null)
PENDING_COUNT=${PENDING_COUNT:-0}
COMPLETED_COUNT=${COMPLETED_COUNT:-0}
TOTAL_COUNT=$((PENDING_COUNT + COMPLETED_COUNT))

echo ""
echo "TODO $PENDING_COUNT pending · $COMPLETED_COUNT done · $TOTAL_COUNT total"
echo ""

# Pending tasks with numbers
if [ "$PENDING_COUNT" -gt 0 ]; then
    echo "PENDING"
    grep -E '^- \[ \]' "$TODO_FILE" | sed 's/^- \[ \] //' | nl -w2 -s'. ' | while read -r line; do
        echo "  [ ] $line"
    done
else
    echo "No pending tasks"
fi

echo ""

# Completed tasks with numbers (separate numbering)
if [ "$COMPLETED_COUNT" -gt 0 ]; then
    echo "DONE"
    grep -E '^- \[x\]' "$TODO_FILE" | sed 's/^- \[x\] //' | nl -w2 -s'. ' | while read -r line; do
        echo "  [x] $line"
    done
fi

echo ""
