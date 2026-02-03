---
description: "Mark a task as completed in the global todo list (supports number or description)"
argument-hint: "<number|task description>"
allowed-tools: ["Bash"]
---

# /todo:complete

Mark a task as completed by running the complete script.

**Examples:**
- `/todo-complete 1` - Complete task #1
- `/todo-complete "buy milk"` - Complete task matching description

```!
${CLAUDE_PLUGIN_ROOT}/scripts/complete.sh "$ARGUMENTS"
```

Then list all todos to confirm:

```!
${CLAUDE_PLUGIN_ROOT}/scripts/list.sh
```
