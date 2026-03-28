Ecto example:

```elixir
Repo.transaction(fn ->
  Repo.query("SELECT pg_advisory_xact_lock(1)")

  # put the rest of the code that makes db changes or queries db here
  ....
end)
```
