
```heex
<div :for={{key, list} <- @lists}> 
. <ul>
    <li :for={item <- list}>{item}</li>
  </ul>
  <button phx-click="shuffle" phx-value-list={key}>Shuffle</button>   
  <button phx-click="sort" phx-value-list={key}>Sort</button> 
</div>
```

https://hexdocs.pm/phoenix_live_view/Phoenix.Component.html#sigil_H/2-special-attributes