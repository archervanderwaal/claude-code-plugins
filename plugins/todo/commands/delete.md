---
description: "Delete a task from the global todo list (supports number or description)"
argument-hint: "<number|task description>"
allowed-tools: ["Bash"]
---

# /todo:delete

Delete a task by running the delete script.

**Examples:**
- `/todo:delete 1` - Delete task #1
- `/todo:delete "buy milk"` - Delete task matching description

**IMPORTANT**: Just display the script output as-is. The script runs silently. Do not add any comments like "Task deleted", do not run `/todo:list`, do not reformat the output.

Execute:
```!
${CLAUDE_PLUGIN_ROOT}/scripts/delete.sh "$ARGUMENTS"
```
