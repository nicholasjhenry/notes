In summary

* Use `#includes` if you need model eager loaded
* Use `#references` if there are referenced items in where clauses (I guess you could use eagler_load here)
* Use `#joins` if there is no need to eager load the models
* Use `#preload` for queries that include joins that need eager loading

The details:

* `#preload`: loads association in a separate query (`#includes` default case)
* `#includes`: loads the association like `#preload` by default unless a `#reference` in where/order clause -> single query `(LEFT OUTER JOIN`)
* `#references`: forces includes to use a single query (`LEFT OUTER JOIN`) required used with `#includes`
* `#eager_load`: loads all association in a single query (`LEFT OUTER JOIN`)  (sames as `#includes` with `#reference` to where/order)
* `#joins`: `INNER JOIN` (does not eager load)
