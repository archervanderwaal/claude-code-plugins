---
description: "Add a new task to the todo list"
argument-hint: "<task description>"
allowed-tools: ["Bash"]
---

# /todo:add

```
!!! CRITICAL !!! DO NOT MODIFY OUTPUT !!!
```

**MANDATORY RULE**: Display the script output EXACTLY as-is.
- **NO** "successfully added" messages
- **NO** greetings
- **NO** reformatting
- **NO** `/todo:list` calls
- **NO** summaries

**THE SCRIPT OUTPUT IS THE FINAL AND ONLY RESPONSE.**

Just show the raw script output and nothing else.

Execute:
```!
${CLAUDE_PLUGIN_ROOT}/scripts/add.sh "$ARGUMENTS"
```
