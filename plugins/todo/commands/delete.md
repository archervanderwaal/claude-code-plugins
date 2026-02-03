---
description: "Delete a task (supports number or description)"
argument-hint: "<number|task description>"
allowed-tools: ["Bash"]
---

# /todo:delete

CRITICAL INSTRUCTION: Display the script output EXACTLY as-is. DO NOT add ANY comments, greetings, or additional text.

The script runs silently (no output). Do NOT add:
- No "Task deleted" messages
- No greetings or intro text
- No `/todo:list` calls

Just show the raw script output (which may be empty) and nothing else.

Execute:
```!
${CLAUDE_PLUGIN_ROOT}/scripts/delete.sh "$ARGUMENTS"
```
