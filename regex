Links

- http://rubular.com/
- https://gist.github.com/nellshamrell/6031738

* Greedy by default (but reasonable) `/No+/`
* Lazy Quantifier `/No+?/`
* Possessive Quantifier `/No++w+/`

Example (with look behind): Select first letters in snake_case to be converted

    # http://rubular.com/r/N7fsUCZ72W
    /^[^a-z]?[a-z]|(?<=_)[a-z]/

Example with Ruby `String#gsub` and block

    re = /^[^a-z]?[a-z]|(?<=_)[a-z]/
    string.gsub(re) {|char| char.upcase}
