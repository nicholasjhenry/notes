
Add MPC server:

```
claude mcp add github --scope user
-e GITHUB_PERSONAL_ACCESS_TOKEN=$(op read "op://Private/GitHub/CLI Token")
-- npx -y @modelcontextprotocol/server-github
```

Configuation

`~/.claude.json`
