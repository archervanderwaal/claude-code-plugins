---
description: "Mark a task as completed in the global todo list (supports number or description)"
argument-hint: "<number|task description>"
allowed-tools: ["Bash"]
---

# /todo:complete

CRITICAL INSTRUCTION: Display the script output EXACTLY as-is. DO NOT add ANY comments, greetings, or additional text.

The script output is the FINAL response. Do NOT add:
- No "Task completed" messages
- No greetings or intro text
- No reformatting
- No `/todo:list` calls

Just show the raw script output and nothing else.

Execute:
```!
${CLAUDE_PLUGIN_ROOT}/scripts/complete.sh "$ARGUMENTS"
```
