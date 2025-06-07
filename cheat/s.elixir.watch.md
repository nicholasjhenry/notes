
```elixir

{:mix_test_watch, "~> 1.0", only: [:dev, :test], runtime: false}

import Config
  
config :mix_test_watch,
tasks: [
      "format",
      "test"
]
```
