Intercept the rendering of a template

    def render("show.html", assigns) do
      render_template("show.html", assigns)
    end

## HTML Modules

Render a template from another module (ModuleHTML.template_name):

```heex
<div>
    <PatternHTML.IndexHTML.patterns conn={@conn} patterns={@patterns} />
</div>
```

Override an existing template function (`index/patterns.html`):

```
defmodule Store.Catalog.RecentPatternHTML.IndexHTML do
  use Store, :html

  alias Store.Catalog.PatternHTML

  def patterns(%{conn: conn, patterns: []}) do
    patterns_empty(conn: conn)
  end

  embed_templates "index/*"
end

```

Note the `embed_templates` macro generates functions for all templates in the directory `index`.

Try this to see those generated functions:

```
Store.Catalog.RecentPatternHTML.IndexHTML.__info__(:functions)

[
  __components__: 0,
  __mix_recompile__?: 0,
  __phoenix_component_verify__: 1,
  __phoenix_verify_routes__: 1,
  # these are the template functions
  patterns: 1,
  patterns_empty: 1
]
```
