Routes

    live("/designer/new", DesignerLive.Form, :new)
    live("/designer/:id/edit", DesignerLive.Form, :edit)

Links

    live_patch "Edit", to: Routes.user_index_path(@socket, :edit, user)

mount OR handle_params

> The golden rule is: always load data on mount.  But if you add live navigation with live_patch,
> the data that can be changed on-the-fly must be now loaded on handle_params.

Render

LiveView Components:

* First render: `mount(socket) -> update(assigns, socket) -> render(assigns)`
* Further renders: `update(assigns, socket) -> render(assigns)`

Docs:

* [Bindings](https://hexdocs.pm/phoenix_live_view/bindings.html)

Live Patch:

> Navigating with live_patch/2 causes LiveView to behave a little bit differently than pointing your
> browser at /products/1/edit. While the lifecycle triggered by navigating your browser to a route
> with a live action first calls the mount/3, then handle_params/3, and finally render/1, the
> lifecycle triggered by the live_patch request skips the call to mount/3. But, whether you click the
> edit link for the first product on the list or point your browser at the edit route for that
> product, the ProductLive.Index live view will call handle_params/3. The handle_params/3 function
> will therefore be responsible for using these data points to update the socket with the correct
> information.

Live Navigation Reference:

| I want to  |           ..when I navigate to...            | ...from within... |          ...so I invoke          |
| ---------- | -------------------------------------------- | ----------------- | -------------------------------- |
| keep state | self()                                       | .heex             | live_patch(@socket, to: path)     |
| drop state | any live route within the same live_session* | .heex             | live_redirect(@socket, to: path) |
| keep state | self()                                       | .ex               | push_patch(@socket, to: path)    |
| drop state | any live route within the same live_session* | .ex               | push_redirect(@socket, to: path) |

*Live redirects across the live_session boundary will fall back to full page reloads.

References:

* [Michael Crumm - Getting to Know the LiveView Lifecycle](https://www.youtube.com/watch?v=J1l4W0T7Jgg)

Functional components:

> You can even have the component give a value back to the caller, by using let.

https://hexdocs.pm/phoenix_live_view/Phoenix.Component.html#module-default-slots
