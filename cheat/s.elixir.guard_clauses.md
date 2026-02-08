# Elixir Guard Clause Patterns

## 1. Multiple Function Heads (The Big One)
```elixir
def process(nil), do: {:error, :missing}
def process(""), do: {:error, :empty}
def process(data), do: {:ok, transform(data)}
```

## 2. `when` Guards
```elixir
def fetch(id) when is_nil(id), do: {:error, :invalid_id}
def fetch(id) when is_integer(id) and id > 0, do: Repo.get(User, id)
def fetch(_), do: {:error, :invalid_id}
```

## 3. Pattern Match + Guard Combo
```elixir
def calculate(%{amount: amt} = order) when amt <= 0, do: {:error, :invalid_amount}
def calculate(%{amount: amt, rate: rate}), do: {:ok, amt * rate}
def calculate(_), do: {:error, :malformed_order}
```

## 4. `with` for Happy-Path Chaining
```elixir
def create_user(params) do
  with {:ok, validated} <- validate(params),
       {:ok, user} <- Repo.insert(validated),
       {:ok, _} <- send_welcome_email(user) do
    {:ok, user}
  end
  # Non-matches fall through as-is
end
```

### `with` + Explicit `else`
```elixir
with {:ok, user} <- fetch_user(id),
     {:ok, post} <- fetch_post(user, post_id) do
  {:ok, post}
else
  {:error, :not_found} -> {:error, :user_not_found}
  {:error, :unauthorized} -> {:error, :forbidden}
  _ -> {:error, :unknown}
end
```

## 5. Inline `case` for Local Branching
```elixir
def publish(post) do
  case validate_post(post) do
    {:error, _} = err -> err
    {:ok, valid} -> do_publish(valid)
  end
end
```

## 6. `cond` for Multiple Boolean Checks
```elixir
def ticket_price(age) do
  cond do
    age < 0 -> {:error, :invalid}
    age < 3 -> {:ok, :free}
    age < 12 -> {:ok, :child}
    age >= 65 -> {:ok, :senior}
    true -> {:ok, :adult}
  end
end
```

## 7. Raise Early (When Errors Are Programmer Bugs)
```elixir
def connect!(nil), do: raise ArgumentError, "config required"
def connect!(config), do: do_connect(config)
```

---

**Mental Model:** Each function head *is* an early return. Pattern match failures skip to the next clause—no explicit `return` needed.
