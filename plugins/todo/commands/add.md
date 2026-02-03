---
description: "Add a new task to the global todo list"
argument-hint: "<task description>"
allowed-tools: ["Bash"]
---

# /todo:add

Add a new task by running the add script:

```!
${CLAUDE_PLUGIN_ROOT}/scripts/add.sh "$ARGUMENTS"
```

Then list all todos to confirm:

```!
${CLAUDE_PLUGIN_ROOT}/scripts/list.sh
```
