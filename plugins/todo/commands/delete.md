---
description: "Delete a task from the global todo list (supports number or description)"
argument-hint: "<number|task description>"
allowed-tools: ["Bash"]
---

# /todo:delete

Delete a task by running the delete script.

**Examples:**
- `/todo-delete 1` - Delete task #1
- `/todo-delete "buy milk"` - Delete task matching description

```!
${CLAUDE_PLUGIN_ROOT}/scripts/delete.sh "$ARGUMENTS"
```

Then list all todos to confirm:

```!
${CLAUDE_PLUGIN_ROOT}/scripts/list.sh
```
