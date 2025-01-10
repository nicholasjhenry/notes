
```elixir
defmodule Twitter.Tweets.Tweet do
  ??? do
	  attribute :text, :string
  end

  calculations do
    calculate :text_length, :integer, expr(string_length(text))
    calculate :liked_by_me, :boolean, expr(exists(likes, user_id == ^actor(:id)))

    calculate :liked_by_user, :boolean, expr(exists(likes, user_id = ^args(:id))) do
      argument :id, :uuid, allow_nil?: false
    end
  end

  aggregates do
    count :like_count, :likes
  end
end


require Ash.Query
Twitter.Tweets.Tweet |> Ash.Query.filter(liked_by_user(id: ^ash.UUID.generate())) |> Ash.read!()
```