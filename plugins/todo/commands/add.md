---
description: "Add a new task to the global todo list"
argument-hint: "<task description>"
allowed-tools: ["Bash"]
---

# /todo:add

Add a new task by running the add script.

**IMPORTANT**: Just display the script output as-is. The script will show success message. Do not add any comments, do not run `/todo:list`, do not reformat the output.

Execute:
```!
${CLAUDE_PLUGIN_ROOT}/scripts/add.sh "$ARGUMENTS"
```
