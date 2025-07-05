Install:

    mix escript.install hex livebook

Run:

    livebook server
    livebook server --help

    iex --name test@127.0.0.1 --cookie mycookie -S mix
    livebook server guides/demo.md
    # connect to node with runtime settings (sr), configure

README instructions:

- Install LiveBook: https://github.com/livebook-dev/livebook#escript
- - Run LiveBook: `livebook server ./notebooks/FILENAME.livemd`
- - Run application, e.g.: `iex --name test@127.0.0.1 --cookie mycookie -S mix`
- - Select Runtime settings, keyboard shortcut `sr` and configure to connect
