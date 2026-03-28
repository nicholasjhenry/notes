- ==, !=, ===, !==, <=, >=, < and > as comparison operators
- The difference between == and === is that the latter is more strict when comparing integers and floats:
- number < atom < reference < function < port < pid < tuple < map < list < bitstring
- https://elixir-lang.org/getting-started/basic-operators.html
- https://hexdocs.pm/elixir/operators.html#comparison-operators

The collection types are compared using the following rules:

- Tuples are compared by size, then element by element.
- Maps are compared by size, then by keys in ascending term order, then by values in key order. In the - specific case of maps' key ordering, integers are always considered to be less than floats.

Lists are compared element by element.

Bitstrings are compared byte by byte, incomplete bytes are compared bit by bit.

- https://hexdocs.pm/elixir/operators.html#redefining-existing-operators
- https://hexdocs.pm/elixir/operators.html#final-note

Kernel vs Enum

- https://hexdocs.pm/elixir/Kernel.html#min/2
- https://hexdocs.pm/elixir/Kernel.html#max/2
- https://hexdocs.pm/elixir/Kernel.html#ceil/1
- https://hexdocs.pm/elixir/Kernel.html#floor/1

Comparison

- https://hexdocs.pm/elixir/Date.html#module-comparing-dates
- https://hexdocs.pm/elixir/Time.html#module-comparing-times
- https://hexdocs.pm/elixir/MapSet.html#equal?/2
- structural comparison vs semantic comparison
- min/max
- https://hexdocs.pm/elixir/Enum.html#sort_by/3
- https://hexdocs.pm/elixir/Enum.html#sort/2
- https://hexdocs.pm/elixir/Enum.html#max/2
- https://hexdocs.pm/elixir/Enum.html#min/2
- https://hexdocs.pm/elixir/Enum.html#uniq_by/2
- https://hexdocs.pm/elixir/DateTime.html#compare/2
- https://hexdocs.pm/elixir/NaiveDateTime.html#compare/2
- https://hexdocs.pm/elixir/Date.html#compare/2
- https://hexdocs.pm/elixir/Enum.html#max_by/3
- https://hexdocs.pm/elixir/Enum.html#min_by/3
- https://hexdocs.pm/elixir/Version.html#compare/2

Guards?

- https://hexdocs.pm/elixir/guards.html#list-of-allowed-expressions
- Maps

https://hexdocs.pm/elixir/Map.html#equal?/2

Keyword

- https://hexdocs.pm/elixir/Keyword.html#equal?/2

Maps:

- https://hexdocs.pm/elixir/Map.html

Maps do not impose any restriction on the key type: anything can be a key in a map. As a key-value structure, maps do not allow duplicated keys. Keys are compared using the exact-equality operator (===/2). If colliding keys are defined in a map literal, the last one prevails.

Decimal:

https://hexdocs.pm/decimal/readme.html#comparisons

https://hexdocs.pm/decimal/Decimal.html#cmp/2

https://hexdocs.pm/decimal/Decimal.html#compare/2

https://hexdocs.pm/decimal/Decimal.html#equal?/2

https://hexdocs.pm/decimal/Decimal.html#eq?/2

https://hexdocs.pm/decimal/Decimal.html#gt?/2

https://hexdocs.pm/decimal/Decimal.html#lt?/2

https://hexdocs.pm/decimal/Decimal.html#max/2

https://hexdocs.pm/decimal/Decimal.html#min/2

- https://elixirforum.com/t/comparison-of-decimals-not-logical/770/11?u=nicholasjhenry

Money:

- https://hexdocs.pm/ex_money/readme.html
- https://hexdocs.pm/ex_money/Money.html#compare/2
- https://hexdocs.pm/ex_money/Money.html#cmp/2
- https://hexdocs.pm/ex_money/Money.html#equal?/2

Discussion and libraries

- https://elixirforum.com/t/equalable-comparable-readable-missing-kernel-protocols/24749
- Erlang equivalance rules
- https://github.com/timCF/equalable#utilities
- https://github.com/coingaming/comparable#utilities
- https://github.com/coingaming/readable

charlist?

arithitec

https://github.com/jacek-adamek/decimal_arithmetic

Ecto

- comparison operators work, SQL