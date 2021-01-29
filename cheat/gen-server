## Initialization

    # returns
    {:ok, pid}

    # client
    def start_link(opts \\ []) do
      GenServer.start_link(__MODULE__, :my_state, opts)
    end

    # client with self name
    def start_link do
      GenServer.start_link(__MODULE__, [], name: __MODULE__)
    end

    # callback - provided by default
    def init(state) do
      {:ok, state}
    end

    # return values
    {:ok, state}
    {ok, state, 5_000}
    {:ok, state, :hibernate}
    {:stop, reason*}
    :ignore

## Synchronous Operation

    # client
    def sync_op(pid, args) do
      GenServer.call(pid, {:sync_op, args})
    end

    # callback
    def handle_call({:sync_op, args}, from, state) do
      new_state = f(state, args)
      {:reply, reply, new_state}
    end

    # return values
    {:reply, reply, new_state}
    {:reply, reply, new_state, 5_000}
    {:reply, reply, new_state, :hibernate}
    {:noreply, new_state}
    {:noreply, new_state, 5_000}
    {:noreply, new_state, :hibernate}
    {:stop, reason*, reply, new_state}
    {:stop, reason*, new_state}

## Asynchronous Operation

    # client
    def async_op(pid, args) do
      GenServer.cast(pid, {:async_op, args})
    end

    # callback
    def handle_cast({:async_op, args}, state) do
      new_state = f(state, args)
      {:noreply, new_state}
    end

    # return values
    {:noreply, new_state}
    {:noreply, new_state, 5_000}
    {:noreply, new_state, :hibernate}
    {:stop, reason*, new_state}

## Out of band messages

    # callback
    def handle_info(msg, state) do
      new_state = f(state, msg)
      {:noreply, new_state}
    end

    # return values
    {:noreply, new_state}
    {:noreply, new_state, 5_000}
    {:noreply, new_state, :hibernate}
    {:stop, reason*, new_state}

## Termination

  # client
  def stop(pid, reason \\ :normal, timeout \\ :infinity) do
    GenServer.stop(pid, reason, timeout)
  end

  # callback
  def terminate(reason, state) do
  # Perform cleanup here
  # ...
  end

  # reasons
  :normal
  :shutdown
  {:shutdown, term}
  term
