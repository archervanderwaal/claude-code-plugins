#!/bin/bash
# 智能检测 TODO 文件路径（支持用户级和项目级插件）

# 获取插件根目录
PLUGIN_ROOT="${CLAUDE_PLUGIN_ROOT:-$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)}"

# 从 PLUGIN_ROOT 找到 .claude 目录（去掉 /.claude/ 之后的部分）
# 用户级：~/.claude/plugins/cache/... → ~/.claude/todo.md
# 项目级：~/myproject/.claude/plugins/... → ~/myproject/.claude/todo.md
TODO_FILE=$(echo "$PLUGIN_ROOT" | sed 's|/\.claude/.*|/.claude/todo.md|')

export TODO_FILE
