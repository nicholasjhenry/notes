
```elixir
stream
    |> NimbleCSV.RFC4180.parse_stream(skip_headers: true)
    |> Stream.map(&map_csv_row/1)
    |> Enum.chunk_every(1000)
    |> Enum.each(fn attrs ->
      {_count, _records} =
        Repo.insert_all(@table_name, attrs, on_conflict: :nothing, conflict_target: @conflict_fields)
    end)
```