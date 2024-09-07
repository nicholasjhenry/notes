```elixir
     @spec new(keyword()) :: t()
    def new(options \\ []) do
      options =
        options
        |> Keyword.validate!([:method, :url, :headers, :body, :adapter, :options])
        |> Keyword.update(:url, URI.new!(""), &URI.parse/1)
        |> Keyword.update(:headers, %{}, fn headers ->
          Map.new(headers, fn {key, value} ->
            {key, List.wrap(value)}
          end)
        end)
        |> Keyword.update(:options, %{}, &Map.new/1)

      struct!(__MODULE__, options)
    end

```

https://github.com/wojtekmach/req/blob/v0.5.4/lib/req/request.ex