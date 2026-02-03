---
description: "Modify a task description (supports number or old description)"
argument-hint: "<number|old description> \"new description\""
allowed-tools: ["Bash"]
---

# /todo:edit

```
!!! CRITICAL !!! DO NOT MODIFY OUTPUT !!!
```

**MANDATORY RULE**: Display the script output EXACTLY as-is.
- **NO** "task modified" messages
- **NO** greetings
- **NO** reformatting
- **NO** `/todo:list` calls
- **NO** summaries

**THE SCRIPT OUTPUT IS THE FINAL AND ONLY RESPONSE.**

Just show the raw script output and nothing else.

Execute:
```!
${CLAUDE_PLUGIN_ROOT}/scripts/modify.sh $ARGUMENTS
```
