Foreign keys:

```elixir
def change do
  alter table(:address) do
    modify :person_id, references(:person, on_delete: :nothing),
      from: references(:person, on_delete: :delete_all)
  end
end
```