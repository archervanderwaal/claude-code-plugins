# Todo - Minimalist Todo List for Claude Code

A clean, minimalist todo list plugin for Claude Code. Pure text, no colors, geek style.

## Features

- **Smart Storage**: Automatically detects user-level or project-level installation
  - User scope: `~/.claude/todo.md` (shared across all projects)
  - Project scope: `{project}/.claude/todo.md` (per-project todos)
- **Plugin Commands**: Use `/todo:list`, `/todo:add`, etc.
- **Flexible Matching**: Operate by number OR exact description
- **Minimalist Design**: Pure text output, works on any terminal
- **UTF-8 Support**: Handles international characters

## Installation

Install from the marketplace:

```bash
/plugin marketplace add https://github.com/archervanderwaal/claude-code-plugins.git
```

Then restart Claude Code.

### Installation Scopes

Choose where to install the plugin:

**User scope** (default):
```bash
/plugin install todo --scope user
```
- Single todo list shared across all projects
- Stored at `~/.claude/todo.md`

**Project scope**:
```bash
/plugin install todo --scope project
```
- Per-project todo lists
- Stored at `{project}/.claude/todo.md`
- Can be committed to version control

## Usage

### List todos

```
/todo:list
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
/todo:add Review pull requests
```

### Complete task

By number:
```
/todo:complete 1
```

By description:
```
/todo:complete "Review PRs"
```

### Delete task

```
/todo:delete 2
```

### Edit task

```
/todo:edit 1 "Review all pull requests by Friday"
```

### Clear completed

```
/todo:clear
```

## Command Reference

| Command | Description |
|---------|-------------|
| `/todo:list` | List all todos |
| `/todo:add <task>` | Add new task |
| `/todo:complete <number\|task>` | Mark as completed |
| `/todo:delete <number\|task>` | Delete task |
| `/todo:edit <number\|old> "new"` | Modify description |
| `/todo:clear` | Clear all completed tasks |

## Data Format

Tasks stored in markdown format:
```markdown
- [ ] Pending task
- [x] Completed task
```

**Storage location** (auto-detected):
- User-level install: `~/.claude/todo.md`
- Project-level install: `{project}/.claude/todo.md`

You can edit these files directly.

## Examples

```bash
# Add tasks
/todo:add Buy groceries
/todo:add Call mom
/todo:add Finish report

# List todos
/todo:list

# Complete first task
/todo:complete 1

# Edit second task
/todo:edit 2 "Call mom about birthday"

# Delete third task
/todo:delete 3

# Clean up completed
/todo:clear
```

## Author

**archer** <coder.archer@gmail.com>

## License

MIT
