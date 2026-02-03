#!/bin/bash
# Clear all completed tasks from TODO.md
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# 加载路径配置
source "$(dirname "${BASH_SOURCE[0]}")/config.sh"

# Count completed tasks before deletion
COMPLETED_COUNT=$(grep -c '^- \[x\]' "$TODO_FILE" 2>/dev/null)
COMPLETED_COUNT=${COMPLETED_COUNT:-0}

if [ "$COMPLETED_COUNT" -eq 0 ]; then
    echo "No completed tasks to clear"
    exit 0
fi

# Remove all completed tasks
sed -i '' '/^- \[x\]/d' "$TODO_FILE"
echo "Cleared $COMPLETED_COUNT completed task(s)"
echo ""

# 自动显示更新后的列表
"$(dirname "${BASH_SOURCE[0]}")/list.sh"
