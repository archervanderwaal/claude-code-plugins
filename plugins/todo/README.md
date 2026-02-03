# Geek Todo - Minimalist Todo List for Claude Code

A clean, minimalist todo list plugin for Claude Code. Pure text, no colors, geek style.

## Features

- **Persistent Storage**: Tasks stored in `~/.claude/TODO.md` survive across sessions
- **Plugin Commands**: Use `/todo-list`, `/todo-list:add`, etc.
- **Flexible Matching**: Operate by number OR exact description
- **Minimalist Design**: Pure text output, works on any terminal
- **UTF-8 Support**: Handles international characters

## Installation

### Install from Marketplace

```bash
/plugin marketplace add archervanderwaal/claude-code-todo-plugin
```

Then restart Claude Code.

### Manual Install

```bash
cd ~/.claude/plugins/local
git clone https://github.com/archervanderwaal/claude-code-todo-plugin.git
```

Then restart Claude Code.

## Usage

### List todos

```
/todo-list
```

Output:
```
TODO 2 pending · 0 done · 2 total

PENDING
  [ ] 1. Review PRs
  [ ] 2. Fix production bug
```

### Add task

```
/todo-list:add Review pull requests
```

### Complete task

By number:
```
/todo-list:complete 1
```

By description:
```
/todo-list:complete "Review PRs"
```

### Delete task

```
/todo-list:delete 2
```

### Edit task

```
/todo-list:edit 1 "Review all pull requests by Friday"
```

### Clear completed

```
/todo-list:clear
```

## Command Reference

| Command | Description |
|---------|-------------|
| `/todo-list` | List all todos |
| `/todo-list:add <task>` | Add new task |
| `/todo-list:complete <number\|task>` | Mark as completed |
| `/todo-list:delete <number\|task>` | Delete task |
| `/todo-list:edit <number\|old> "new"` | Modify description |
| `/todo-list:clear` | Clear all completed tasks |

## Data Format

Tasks stored in `~/.claude/TODO.md`:
```markdown
- [ ] Pending task
- [x] Completed task
```

You can edit this file directly.

## Examples

```bash
# Add tasks
/todo-list:add Buy groceries
/todo-list:add Call mom
/todo-list:add Finish report

# List todos
/todo-list

# Complete first task
/todo-list:complete 1

# Edit second task
/todo-list:edit 2 "Call mom about birthday"

# Delete third task
/todo-list:delete 3

# Clean up completed
/todo-list:clear
```

## Author

**archer** <coder.archer@gmail.com>

## License

MIT
