Keyword Query Syntax

    import Ecto.Query, only: [from: 2]

    query = from w in Weather,
              where: w.prcp > 0 or is_nil(w.prcp),
              select: w

    # Returns %Weather{} structs matching the query
    Repo.all(query)

Macro API (Expression Query Syntax)

    Weather
    |> where([w], w.prcp > 0 or is_nil(w.prcp)),
    |> Repo.all

Example of nested params

    %{"title" => "Testing",
      "todo_items" =>
        %{
            "0" => %{"body" => "Testing 1"},
            "1" => %{"body" => "Testing 1"}
        }
    }

Preload with pre-defined join value:

    Repo.all from p in Post,
              join: c in assoc(p, :comments),
              where: c.votes > p.votes,
              preload: [comments: c]

Assocs

    # Get all comments for the given post
    Repo.all assoc(post, :comments)

    # Or build a query on top of the associated comments
    assoc(post, :comments)
    |> where([c], not is_nil(c.title))
    |> Repo.all

Raw

    Ecto.Adapters.SQL.query!(Examples.Repo, "SELECT 1", [])

SQL

```elixir
Repo.explain(:all, query, analyze: true, costs: true, verbose: true, buffers: true, format: :map)
|> Jason.encode!
|> IO.puts

query
|> Repo.to_sql()
|> then(fn {sql, _} -> IO.puts(sql) end)
```

https://tatiyants.com/pev
