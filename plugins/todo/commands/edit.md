---
description: "Modify a task description in the global todo list (supports number or old description)"
argument-hint: "<number|old description> \"new description\""
allowed-tools: ["Bash"]
---

# /todo:edit

Modify a task description by running the modify script.

**Examples:**
- `/todo-edit 1 "buy bread"` - Modify task #1 to "buy bread"
- `/todo-edit "buy milk" "buy bread and eggs"` - Rename 'buy milk' to 'buy bread and eggs'

```!
${CLAUDE_PLUGIN_ROOT}/scripts/modify.sh $ARGUMENTS
```

Then list all todos to confirm:

```!
${CLAUDE_PLUGIN_ROOT}/scripts/list.sh
```
