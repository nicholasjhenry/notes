```elixir
def load(query) do
  query
  |> include_mappings
  |> determine_mapping_state
end

defp determine_mapping_state(query) do
  select_merge(
    query,
    [_element, mappings],
    %{
      mapped?:
        fragment("CASE WHEN ? IS NULL THEN false ELSE true END", mappings.id) |> type(:boolean)
    }
  )
end

defp include_mappings(query) do
  from element in query,
    left_join: mappings in assoc(element, :mappings),
    preload: [mappings: mappings]
end
```
