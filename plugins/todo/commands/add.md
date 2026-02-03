---
description: "Add a new task to the global todo list"
argument-hint: "<task description>"
allowed-tools: ["Bash"]
---

# /todo:add

CRITICAL INSTRUCTION: Display the script output EXACTLY as-is. DO NOT add ANY comments, greetings, or additional text.

The script output is the FINAL response. Do NOT add:
- No "Task added successfully" messages
- No greetings or intro text
- No reformatting
- No `/todo:list` calls

Just show the raw script output and nothing else.

Execute:
```!
${CLAUDE_PLUGIN_ROOT}/scripts/add.sh "$ARGUMENTS"
```
