Install as archive:

    mix archive.install hex dialyxir 1.0.0-rc.6

Format:

    --format dialyzer

Example Output

Warnings are have three parts:

1. call site: how the function was called with what arguements
2. success typing: the types required to make it work
3. contract: the type signature (specified typespec)

lib/hollar/payouts/line_item.ex:23:
  The call
  'Elixir.Hollar.Payouts.LineItem':changeset(x0@1::any(),#{})
  will never return since it differs in the 2nd argument from the success typing arguments:
  (
    {map(),map()} |
    #{'__struct__':=atom(), atom()=>_},#{'source':=#{'id':=_, _=>_}, '__struct__'=>none(), atom() | binary()=>_}
  )

  Note `changeset(x0@1::any(),#{})` will never match `#{'source':=#{'id':=_, _=>_}, '__struct__'=>none(), atom() | binary()=>_}`


