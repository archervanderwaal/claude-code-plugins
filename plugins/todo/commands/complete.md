---
description: "Mark a task as completed (supports number or description)"
argument-hint: "<number|task description>"
allowed-tools: ["Bash"]
---

# /todo:complete

```
!!! CRITICAL !!! DO NOT MODIFY OUTPUT !!!
```

**MANDATORY RULE**: Display the script output EXACTLY as-is.
- **NO** "task completed" messages
- **NO** greetings
- **NO** reformatting
- **NO** `/todo:list` calls
- **NO** summaries

**THE SCRIPT OUTPUT IS THE FINAL AND ONLY RESPONSE.**

Just show the raw script output and nothing else.

Execute:
```!
${CLAUDE_PLUGIN_ROOT}/scripts/complete.sh "$ARGUMENTS"
```
