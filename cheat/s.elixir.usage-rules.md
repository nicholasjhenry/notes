# Usage Rules

```elixir
  defp usage_rules do
    # Example for those using claude.
    [
      file: "AGENTS.md",
      usage_rules: [
        "usage_rules:elixir",
        "usage_rules:otp"
      ]
    ]
  end
```

```shell
mix usage_rules.sync
```
