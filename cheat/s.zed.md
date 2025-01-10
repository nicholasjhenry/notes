## Assistant

See: https://zed.dev/docs/assistant/configuration#openai

- `OPENAI_API_KEY` configured
- `assistant:show configuration`


## Emmet for HEEX

```toml
# ~/Library/Application\ Support/Zed/extensions/installed/emmet/extension.toml

[language_servers.emmet-language-server]
language = "HTML"
languages = ["HTML", "PHP", "ERB", "JavaScript", "TSX", "CSS", "HEEX"]

[language_servers.emmet-language-server.language_ids]
HEEX = "heex"
```

Zed Settings:

```json
    "HEEX": {
      "language_servers": [
        "elixir-ls",
        "tailwindcss-language-server",
        "emmet-language-server"
      ]
    },
```

Note: This may take a little while to "kick in, " but it does work.