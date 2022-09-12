Macro.escape

> Macro.escape is used to take an Elixir literal and recursively escape it for injection into an AST.
> Its use is required when you need to inject an Elixir value into an already-quoted expression where
> the value is not an AST literal. For our Hub module, we need to inject the JSON map into the function body,
> but the def macro already quotes the received block of code. We escape repo when using unquote to convert
> the map into a valid AST for inclusion in the quoted block.
