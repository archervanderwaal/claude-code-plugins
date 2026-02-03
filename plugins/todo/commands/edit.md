---
description: "Modify a task description in the global todo list (supports number or old description)"
argument-hint: "<number|old description> \"new description\""
allowed-tools: ["Bash"]
---

# /todo:edit

CRITICAL INSTRUCTION: Display the script output EXACTLY as-is. DO NOT add ANY comments, greetings, or additional text.

The script output is the FINAL response. Do NOT add:
- No "Task modified" messages
- No greetings or intro text
- No reformatting
- No `/todo:list` calls

Just show the raw script output and nothing else.

Execute:
```!
${CLAUDE_PLUGIN_ROOT}/scripts/modify.sh $ARGUMENTS
```
