
```elixir
form =
  Kino.Control.form(
    [
      url: Kino.Input.text("URL", default: "https://self-signed.badssl.com/")
    ],
    submit: "Submit"
  )

Kino.listen(form, fn %{data: %{url: url}} ->
  IO.puts(url)
end)
```