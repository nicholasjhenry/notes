for-comprehension is equivalent to a chain of flat_map with a map

    for {foo, bar} <- y, qux <- bar do
      [foo, qux]
    end

    # => [[:a, 1], [:a, 2], [:b, 3], [:b, 4], [:c, 5], [:c, 6]]
