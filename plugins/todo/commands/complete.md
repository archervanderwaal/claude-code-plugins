---
description: "Mark a task as completed in the global todo list (supports number or description)"
argument-hint: "<number|task description>"
allowed-tools: ["Bash"]
---

# /todo:complete

Mark a task as completed by running the complete script.

**Examples:**
- `/todo:complete 1` - Complete task #1
- `/todo:complete "buy milk"` - Complete task matching description

**IMPORTANT**: Just display the script output as-is. The script will show success message. Do not add any comments, do not run `/todo:list`, do not reformat the output.

Execute:
```!
${CLAUDE_PLUGIN_ROOT}/scripts/complete.sh "$ARGUMENTS"
```
