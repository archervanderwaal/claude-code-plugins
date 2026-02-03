# Claude Plugins

Collection of Claude Code plugins for productivity and development.

## Installation

```bash
/plugin marketplace add https://github.com/archervanderwaal/claude-plugins.git
```

Then restart Claude Code.

## Available Plugins

### todo

Minimalist todo list plugin with pure text output. Tasks stored in `~/.claude/TODO.md`.

**Commands:**
- `/todo:list` - List all todos
- `/todo:add <task>` - Add new task
- `/todo:complete <number|task>` - Mark as completed
- `/todo:delete <number|task>` - Delete task
- `/todo:edit <number|old> "new"` - Modify description
- `/todo:clear` - Clear all completed tasks

## Author

**archer** <coder.archer@gmail.com>

## License

MIT
