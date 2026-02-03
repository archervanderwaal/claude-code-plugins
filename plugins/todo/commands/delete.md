---
description: "Delete a task (supports number or description)"
argument-hint: "<number|task description>"
allowed-tools: ["Bash"]
---

# /todo:delete

```
!!! CRITICAL !!! DO NOT MODIFY OUTPUT !!!
```

**MANDATORY RULE**: Display the script output EXACTLY as-is.
- The script runs silently (may have no output)
- **NO** "task deleted" messages
- **NO** greetings
- **NO** `/todo:list` calls
- **NO** confirmations

**THE SCRIPT OUTPUT IS THE FINAL AND ONLY RESPONSE.**

Just show the raw script output (even if empty) and nothing else.

Execute:
```!
${CLAUDE_PLUGIN_ROOT}/scripts/delete.sh "$ARGUMENTS"
```
