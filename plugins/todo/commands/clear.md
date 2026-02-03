---
description: "Clear all completed tasks from the global todo list"
allowed-tools: ["Bash"]
---

# /todo:clear

Clear all completed tasks by running the clear script.

**IMPORTANT**: The script will automatically display the updated todo list after clearing. Do not manually run `/todo:list` again - just show the script output as-is.

Execute:
```!
${CLAUDE_PLUGIN_ROOT}/scripts/clear-completed.sh
```
